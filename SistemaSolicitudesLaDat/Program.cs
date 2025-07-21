using SistemaSolicitudesLaDat.Repository.Bitacora;
using SistemaSolicitudesLaDat.Repository.Desgloses;
using SistemaSolicitudesLaDat.Repository.Infrastructure;
using SistemaSolicitudesLaDat.Repository.Login;
using SistemaSolicitudesLaDat.Repository.Representantes;
using SistemaSolicitudesLaDat.Repository.Solicitudes;
using SistemaSolicitudesLaDat.Repository.Usuarios;
using SistemaSolicitudesLaDat.Service.Abstract;
using SistemaSolicitudesLaDat.Service.Bitacora;
using SistemaSolicitudesLaDat.Service.Desgloses;
using SistemaSolicitudesLaDat.Service.Encriptado;
using SistemaSolicitudesLaDat.Service.Login;
using SistemaSolicitudesLaDat.Service.Representantes;
using SistemaSolicitudesLaDat.Service.Seguridad;
using SistemaSolicitudesLaDat.Service.Solicitudes;
using SistemaSolicitudesLaDat.Service.Usuarios;
using SistemaSolicitudesLaDat.Services;
//using SistemaSolicitudesLaDat.Services;


var builder = WebApplication.CreateBuilder(args);

// Configurar EPPlus para licencia no comercial

// Add services to the container.
builder.Services.AddRazorPages();
builder.Services.AddSingleton<IDbConnectionFactory, DbConnectionFactory>();

// Repositorios
builder.Services.AddScoped<UsuarioRepository>();
builder.Services.AddScoped<LoginRepository>();
builder.Services.AddScoped<SolicitudRepository>();

builder.Services.AddScoped<ImpuestoRepository>();
builder.Services.AddScoped<BitacoraRepository>();
builder.Services.AddScoped<EstadoSolicitudRepository>();
builder.Services.AddScoped<SolicitudRepository>();
builder.Services.AddScoped<RepresentantesRepository>();
builder.Services.AddScoped<DesgloseRepository>();

builder.Services.AddScoped<DetallePropuestaRepository>();
builder.Services.AddScoped<PropuestaRepository>(); 
builder.Services.AddScoped<ProveedorRepository>();

// Servicios
builder.Services.AddScoped<IUsuarioService, UsuarioService>();
builder.Services.AddScoped<IBitacoraService, BitacoraService>();
builder.Services.AddScoped<IEncriptadoService, EncriptadoService>();
builder.Services.AddScoped<ISeguridadService, SeguridadService>();
builder.Services.AddScoped<IEstadoSolicitudService, EstadoSolicitudService>();
builder.Services.AddScoped<ISolicitudService, SolicitudService>();
builder.Services.AddScoped<IRepresentanteService, RepresentanteService>();
builder.Services.AddScoped<IDesgloseService, DesgloseService>();
builder.Services.AddScoped<IImpuestoService, ImpuestoService>();

builder.Services.AddScoped<IProveedorService, ProveedorService>();
builder.Services.AddScoped <IDetallePropuestaService, DetallePropuestaService>();
builder.Services.AddScoped <IPropuestaService, PropuestaService>();

builder.Services.AddScoped<LoginService>();
builder.Services.AddScoped<EncriptadoService>();

builder.Services.AddAuthentication("Cookies")
    .AddCookie("Cookies", options =>
    {
        options.LoginPath = "/Index"; // Página donde redirige si no hay sesión
        //options.AccessDeniedPath = "/AccessDenied"; // Opcional
        options.SlidingExpiration = true;
    });

// Para restringir la autenticación y autorización de usuarios
builder.Services.AddAuthorization();

builder.Services.AddRazorPages(options =>
{
    // Para proteger toda la carpeta /Usuarios
    options.Conventions.AuthorizeFolder("/Usuarios");

    // Para permitir acceso anónimo al login(index)
    options.Conventions.AllowAnonymousToPage("/Index");
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthentication(); // Añadir autenticación antes de autorización
app.UseAuthorization();

app.MapRazorPages();

app.Run();
