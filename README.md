# Tech docs manual

This project contains the documentation for the GOV.UK Tech Docs project.

👉 [Go to alphagov.github.io/tech-docs-manual](https://alphagov.github.io/tech-docs-manual)

It uses the [tech-docs-gem](https://github.com/alphagov/tech-docs-gem) for layout.

### Running locally

To run the app locally:

```
./startup.sh
```

The app will appear at [http://localhost:4567/](http://localhost:4567/)

### Building the project

Build the site with:

```
bundle exec middleman build
```

This will create a bunch of static files in `/build`.

### Deployment

This project uses [GitHub pages](https://pages.github.com) for hosting. It is deployed automatically when a Pull Request is merged.

## Licence

Unless stated otherwise, the codebase is released under [the MIT License][mit].
This covers both the codebase and any sample code in the documentation.

The documentation is [© Crown copyright][copyright] and available under the terms
of the [Open Government 3.0][ogl] licence.

[rvm]: https://www.ruby-lang.org/en/documentation/installation/#managers
[bundler]: http://bundler.io/
[mit]: LICENCE
[copyright]: http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/crown-copyright/
[ogl]: http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
