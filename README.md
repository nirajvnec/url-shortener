public string? CreateUserEmailFromToken(HttpRequest request)
{
    if (request.Headers.ContainsKey("Authorization"))
    {
        var bearerToken = request.Headers["Authorization"].ToString()
            .Replace("Bearer ", string.Empty, StringComparison.OrdinalIgnoreCase);

        var handler = new JwtSecurityTokenHandler();
        var jsonToken = handler.ReadToken(bearerToken) as JwtSecurityToken;

        if (jsonToken != null)
        {
            var user = jsonToken.Claims
                .FirstOrDefault(claim => claim.Type.Equals("upn", StringComparison.OrdinalIgnoreCase))?.Value;

            return user ?? "Unknown";
        }
    }

    return "Unknown";
}