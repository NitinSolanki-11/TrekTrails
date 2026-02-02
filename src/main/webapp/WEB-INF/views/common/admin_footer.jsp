<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!-- Footer -->
    <footer class="text-white" style="min-height: 150px; background: linear-gradient(135deg, #0f172a 0%, #1e293b 50%, #334155 100%); border-top: 3px solid #3b82f6;">
        <div class="container-fluid py-4">
            <!-- Admin Panel Header -->
            <div class="row mb-3">
                <div class="col-12 text-center">
                    <div class="d-flex align-items-center justify-content-center mb-2">
                        <i class="bi bi-gear-fill me-2" style="font-size: 1.2rem;"></i>
                        <h5 class="mb-0 me-3">Admin Control Panel</h5>
                        <span style="background: linear-gradient(45deg, #10b981, #059669); color: white; padding: 2px 8px; border-radius: 10px; font-size: 0.7rem; font-weight: 600;">
                            <i class="bi bi-circle-fill me-1" style="font-size: 0.5rem;"></i>ONLINE
                        </span>
                    </div>
                </div>
            </div>

            <!-- Quick Navigation -->
            <div class="row mb-3">
                <div class="col-12">
                    <div class="d-flex flex-wrap justify-content-center gap-2">
                        <a href="#dashboard" class="text-decoration-none" style="color: #93c5fd; background: rgba(255,255,255,0.1); padding: 4px 10px; border-radius: 15px; font-size: 0.85rem;" onmouseover="this.style.background='rgba(255,255,255,0.2)'" onmouseout="this.style.background='rgba(255,255,255,0.1)'">
                            <i class="bi bi-speedometer2 me-1"></i>Dashboard
                        </a>
                        <a href="#users" class="text-decoration-none" style="color: #93c5fd; background: rgba(255,255,255,0.1); padding: 4px 10px; border-radius: 15px; font-size: 0.85rem;" onmouseover="this.style.background='rgba(255,255,255,0.2)'" onmouseout="this.style.background='rgba(255,255,255,0.1)'">
                            <i class="bi bi-people me-1"></i>Users
                        </a>
                        <a href="#settings" class="text-decoration-none" style="color: #93c5fd; background: rgba(255,255,255,0.1); padding: 4px 10px; border-radius: 15px; font-size: 0.85rem;" onmouseover="this.style.background='rgba(255,255,255,0.2)'" onmouseout="this.style.background='rgba(255,255,255,0.1)'">
                            <i class="bi bi-gear me-1"></i>Settings
                        </a>
                        <a href="#reports" class="text-decoration-none" style="color: #93c5fd; background: rgba(255,255,255,0.1); padding: 4px 10px; border-radius: 15px; font-size: 0.85rem;" onmouseover="this.style.background='rgba(255,255,255,0.2)'" onmouseout="this.style.background='rgba(255,255,255,0.1)'">
                            <i class="bi bi-bar-chart me-1"></i>Reports
                        </a>
                        <a href="#support" class="text-decoration-none" style="color: #93c5fd; background: rgba(255,255,255,0.1); padding: 4px 10px; border-radius: 15px; font-size: 0.85rem;" onmouseover="this.style.background='rgba(255,255,255,0.2)'" onmouseout="this.style.background='rgba(255,255,255,0.1)'">
                            <i class="bi bi-headset me-1"></i>Support
                        </a>
                    </div>
                </div>
            </div>

            <!-- Main Footer Content -->
            <div class="row align-items-center">
                <div class="col-lg-4 col-md-6 mb-3 mb-lg-0 text-center text-md-start">
                    <div class="d-flex align-items-center justify-content-center justify-content-md-start mb-2">
                        <i class="bi bi-shield-check me-2"></i>
                        Copyright &copy; 2024 to 
                        <a href="https://mykss.in" target="_blank" class="text-decoration-none ms-2" style="color: #93c5fd; background: rgba(255,255,255,0.1); padding: 4px 8px; border-radius: 4px;" onmouseover="this.style.background='rgba(255,255,255,0.2)'" onmouseout="this.style.background='rgba(255,255,255,0.1)'">
                            <i class="bi bi-building me-1"></i>KSS Chitrakoot
                        </a>
                    </div>
                    <small class="text-light" style="opacity: 0.8;">
                        <i class="bi bi-code-square me-1"></i>Version 2.1.0 | 
                        <i class="bi bi-server me-1"></i>Server: Active
                    </small>
                </div>
                
                <div class="col-lg-4 col-md-6 mb-3 mb-lg-0 text-center">
                    <div class="mb-2">
                        Developed by 
                        <a href="#developer" target="_blank" class="text-decoration-none ms-1" style="color: #93c5fd; background: rgba(255,255,255,0.1); padding: 4px 8px; border-radius: 4px;" onmouseover="this.style.background='rgba(255,255,255,0.2)'" onmouseout="this.style.background='rgba(255,255,255,0.1)'">
                            <i class="bi bi-person-badge me-1"></i>Er. Nitin Solanki
                        </a>
                    </div>
                    <small class="text-light" style="opacity: 0.8;">
                        <i class="bi bi-clock me-1"></i>Last Login: Today 14:30
                    </small>
                </div>

                <div class="col-lg-4 col-12 text-center text-lg-end">
                    <div class="mb-2">
                        <a href="mailto:admin@kss.in" class="text-decoration-none me-2" style="color: #93c5fd;" onmouseover="this.style.color='#ffffff'" onmouseout="this.style.color='#93c5fd'">
                            <i class="bi bi-envelope-fill"></i>
                        </a>
                        <a href="tel:+91-1234567890" class="text-decoration-none me-2" style="color: #93c5fd;" onmouseover="this.style.color='#ffffff'" onmouseout="this.style.color='#93c5fd'">
                            <i class="bi bi-telephone-fill"></i>
                        </a>
                        <a href="#" class="text-decoration-none me-2" style="color: #93c5fd;" onmouseover="this.style.color='#ffffff'" onmouseout="this.style.color='#93c5fd'">
                            <i class="bi bi-linkedin"></i>
                        </a>
                        <a href="#" class="text-decoration-none" style="color: #93c5fd;" onmouseover="this.style.color='#ffffff'" onmouseout="this.style.color='#93c5fd'">
                            <i class="bi bi-twitter"></i>
                        </a>
                    </div>
                    <small class="text-light" style="opacity: 0.8;">
                        <i class="bi bi-shield-lock-fill me-1"></i>Secure Connection
                    </small>
                </div>
            </div>
        </div>
    </footer>