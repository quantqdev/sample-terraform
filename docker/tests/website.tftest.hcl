run "website_is_running" {
  command = plan

  module {
    source = "./tests/helpers/http"
  }

  variables {
    endpoint = "http://localhost:8080"
  }

  assert {
    condition     = data.http.index.status_code == 200
    error_message = "Website responded with HTTP status ${data.http.index.status_code}"
  }
}
