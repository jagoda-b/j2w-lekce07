[#ftl]

[#macro holiday title]
    <h1>${title} v roce ${year?c}</h1>
    <ul>
        [#list calendar as item]
            <li>${item.label}: <strong>${item.date?date?string.full}</strong></li>
        [/#list]
    </ul>

    <div><a href="/" class="btn btn-primary">Zpět na úvod</a></div>

[/#macro]

[#macro page title]
    <!DOCTYPE html>
    <html lang="cs">
    <head>
        <meta charset="UTF-8">
        <title>${title}</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
    <div class="d-flex flex-column justify-content-center align-items-center min-vh-100">
        [#nested]
    </div>
    </body>
    </html>
[/#macro]


