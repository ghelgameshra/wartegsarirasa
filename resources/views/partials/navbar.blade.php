<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand fw-bold" href="/">SARIRASA</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link {{ ($active === "home" ? 'active' : '') }}" href="/"><i class="bi bi-house-door"></i> Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active === "about" ? 'active' : '') }}" href="/about"><i class="bi bi-people"></i> About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active === "posts" ? 'active' : '') }}" href="/posts"><i class="bi bi-card-text"></i> Blog</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active === "categories" ? 'active' : '') }}" href="/categories"><i class="bi bi-tags"></i> Category</a>
          </li>
        </ul>

        <ul class="navbar-nav ms-auto">
          @auth
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Welcome back, {{ auth()->user()->name }}
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/dashboard"><i class="bi bi-layout-text-sidebar-reverse"></i> My Dashboard</a></li>
              <li><hr class="dropdown-divider"></li>
              <li>
                <form action="/logout" method="post">
                  @csrf
                  <button type="submit" class="dropdown-item"><i class="bi bi-arrow-right-square"></i> Logout</a></button>
                </form>
            </ul>
          </li>
          @else
              <li class="nav-item">
                <a class="nav-link {{ ($active === "login" ? 'active' : '') }}" href="/login"><i class="bi bi-person-circle"></i> Login</a>
              </li>
          </ul>
          @endauth
      </div>
    </div>
</nav>
