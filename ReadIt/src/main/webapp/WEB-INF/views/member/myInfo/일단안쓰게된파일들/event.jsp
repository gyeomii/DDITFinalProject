<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Dashboard ecommerce - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/select/select2.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/dashboard-ecommerce.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/charts/chart-apex.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-profile.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
</head>    
<body class="horizontal-layout horizontal-menu  navbar-floating footer-static" data-open="hover" data-menu="horizontal-menu" data-col="">
                            
                            
                <!-- users list start -->
                <div class="card">
                                <h4 class="card-header">행사페이지</h4>
                                <div class="table">
                                    <table class="table ">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th>Project</th>
                                                <th class="text-nowrap">Total Task</th>
                                                <th>Progress</th>
                                                <th>Hours</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                            
                <section class="app-user-list">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="card-body d-flex align-items-center justify-content-between">
                                    <div>
                                        <h3 class="fw-bolder mb-75">21,459</h3>
                                        <span>Total Users</span>
                                    </div>
                                    <div class="avatar bg-light-primary p-50">
                                        <span class="avatar-content">
                                            <i data-feather="user" class="font-medium-4"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="card-body d-flex align-items-center justify-content-between">
                                    <div>
                                        <h3 class="fw-bolder mb-75">4,567</h3>
                                        <span>Paid Users</span>
                                    </div>
                                    <div class="avatar bg-light-danger p-50">
                                        <span class="avatar-content">
                                            <i data-feather="user-plus" class="font-medium-4"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="card-body d-flex align-items-center justify-content-between">
                                    <div>
                                        <h3 class="fw-bolder mb-75">19,860</h3>
                                        <span>Active Users</span>
                                    </div>
                                    <div class="avatar bg-light-success p-50">
                                        <span class="avatar-content">
                                            <i data-feather="user-check" class="font-medium-4"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="card-body d-flex align-items-center justify-content-between">
                                    <div>
                                        <h3 class="fw-bolder mb-75">237</h3>
                                        <span>Pending Users</span>
                                    </div>
                                    <div class="avatar bg-light-warning p-50">
                                        <span class="avatar-content">
                                            <i data-feather="user-x" class="font-medium-4"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- list and filter start -->
                    
                    
                    
                    
                    <div class="card">
                        <div class="card-body border-bottom">
                            <h4 class="card-title">Search & Filter</h4>
                            <div class="row">
                                <div class="col-md-4 user_role"></div>
                                <div class="col-md-4 user_plan"></div>
                                <div class="col-md-4 user_status"></div>
                            </div>
                        </div>
                        <div class="card-datatable table-responsive pt-0">
                            <table class=" ">
                                <thead class="table-light">
                                    <tr>
                                        <th></th>
                                        <th>Name</th>
                                        <th>Role</th>
                                        <th>Plan</th>
                                        <th>Billing</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                        <!-- Modal to add new user starts-->
                        <div class="modal modal-slide-in new-user-modal fade" id="modals-slide-in">
                            <div class="modal-dialog">
                                <form class="add-new-user modal-content pt-0">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">×</button>
                                    <div class="modal-header mb-1">
                                        <h5 class="modal-title" id="exampleModalLabel">Add User</h5>
                                    </div>
                                    <div class="modal-body flex-grow-1">
                                        <div class="mb-1">
                                            <label class="form-label" for="basic-icon-default-fullname">Full Name</label>
                                            <input type="text" class="form-control dt-full-name" id="basic-icon-default-fullname" placeholder="John Doe" name="user-fullname" />
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label" for="basic-icon-default-uname">Username</label>
                                            <input type="text" id="basic-icon-default-uname" class="form-control dt-uname" placeholder="Web Developer" name="user-name" />
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label" for="basic-icon-default-email">Email</label>
                                            <input type="text" id="basic-icon-default-email" class="form-control dt-email" placeholder="john.doe@example.com" name="user-email" />
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label" for="basic-icon-default-contact">Contact</label>
                                            <input type="text" id="basic-icon-default-contact" class="form-control dt-contact" placeholder="+1 (609) 933-44-22" name="user-contact" />
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label" for="basic-icon-default-company">Company</label>
                                            <input type="text" id="basic-icon-default-company" class="form-control dt-contact" placeholder="PIXINVENT" name="user-company" />
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label" for="country">Country</label>
                                            <select id="country" class="select2 form-select">
                                                <option value="Australia">USA</option>
                                                <option value="Bangladesh">Bangladesh</option>
                                                <option value="Belarus">Belarus</option>
                                                <option value="Brazil">Brazil</option>
                                                <option value="Canada">Canada</option>
                                                <option value="China">China</option>
                                                <option value="France">France</option>
                                                <option value="Germany">Germany</option>
                                                <option value="India">India</option>
                                                <option value="Indonesia">Indonesia</option>
                                                <option value="Israel">Israel</option>
                                                <option value="Italy">Italy</option>
                                                <option value="Japan">Japan</option>
                                                <option value="Korea">Korea, Republic of</option>
                                                <option value="Mexico">Mexico</option>
                                                <option value="Philippines">Philippines</option>
                                                <option value="Russia">Russian Federation</option>
                                                <option value="South Africa">South Africa</option>
                                                <option value="Thailand">Thailand</option>
                                                <option value="Turkey">Turkey</option>
                                                <option value="Ukraine">Ukraine</option>
                                                <option value="United Arab Emirates">United Arab Emirates</option>
                                                <option value="United Kingdom">United Kingdom</option>
                                                <option value="United States">United States</option>
                                            </select>
                                        </div>
                                        <div class="mb-1">
                                            <label class="form-label" for="user-role">User Role</label>
                                            <select id="user-role" class="select2 form-select">
                                                <option value="subscriber">Subscriber</option>
                                                <option value="editor">Editor</option>
                                                <option value="maintainer">Maintainer</option>
                                                <option value="author">Author</option>
                                                <option value="admin">Admin</option>
                                            </select>
                                        </div>
                                        <div class="mb-2">
                                            <label class="form-label" for="user-plan">Select Plan</label>
                                            <select id="user-plan" class="select2 form-select">
                                                <option value="basic">Basic</option>
                                                <option value="enterprise">Enterprise</option>
                                                <option value="company">Company</option>
                                                <option value="team">Team</option>
                                            </select>
                                        </div>
                                        <button type="submit" class="btn btn-primary me-1 data-submit">Submit</button>
                                        <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Modal to add new user Ends-->
                    </div>
                    <!-- list and filter end -->
                </section>
                <!-- users list ends -->

                            <!-- /Activity Timeline -->

                            <!-- Invoice table -->
                            <div class="card">
                                <table class=" table text-nowrap">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>#ID</th>
                                            <th><i data-feather="trending-up"></i></th>
                                            <th>TOTAL Paid</th>
                                            <th class="text-truncate">Issued Date</th>
                                            <th class="cell-fit">Actions</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                            <!-- /Invoice table -->
                        <!--/ User Content -->
                </section>
                <!-- Edit User Modal -->
                <div class="modal fade" id="editUser" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
                        <div class="modal-content">
                            <div class="modal-header bg-transparent">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body pb-5 px-sm-5 pt-50">
                                <div class="text-center mb-2">
                                    <h1 class="mb-1">Edit User Information</h1>
                                    <p>Updating user details will receive a privacy audit.</p>
                                </div>
                                <form id="editUserForm" class="row gy-1 pt-75" onsubmit="return false">
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="modalEditUserFirstName">First Name</label>
                                        <input type="text" id="modalEditUserFirstName" name="modalEditUserFirstName" class="form-control" placeholder="John" value="Gertrude" data-msg="Please enter your first name" />
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="modalEditUserLastName">Last Name</label>
                                        <input type="text" id="modalEditUserLastName" name="modalEditUserLastName" class="form-control" placeholder="Doe" value="Barton" data-msg="Please enter your last name" />
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label" for="modalEditUserName">Username</label>
                                        <input type="text" id="modalEditUserName" name="modalEditUserName" class="form-control" value="gertrude.dev" placeholder="john.doe.007" />
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="modalEditUserEmail">Billing Email:</label>
                                        <input type="text" id="modalEditUserEmail" name="modalEditUserEmail" class="form-control" value="gertrude@gmail.com" placeholder="example@domain.com" />
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="modalEditUserStatus">Status</label>
                                        <select id="modalEditUserStatus" name="modalEditUserStatus" class="form-select" aria-label="Default select example">
                                            <option selected>Status</option>
                                            <option value="1">Active</option>
                                            <option value="2">Inactive</option>
                                            <option value="3">Suspended</option>
                                        </select>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="modalEditTaxID">Tax ID</label>
                                        <input type="text" id="modalEditTaxID" name="modalEditTaxID" class="form-control modal-edit-tax-id" placeholder="Tax-8894" value="Tax-8894" />
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="modalEditUserPhone">Contact</label>
                                        <input type="text" id="modalEditUserPhone" name="modalEditUserPhone" class="form-control phone-number-mask" placeholder="+1 (609) 933-44-22" value="+1 (609) 933-44-22" />
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="modalEditUserLanguage">Language</label>
                                        <select id="modalEditUserLanguage" name="modalEditUserLanguage" class="select2 form-select" multiple>
                                            <option value="english">English</option>
                                            <option value="spanish">Spanish</option>
                                            <option value="french">French</option>
                                            <option value="german">German</option>
                                            <option value="dutch">Dutch</option>
                                            <option value="hebrew">Hebrew</option>
                                            <option value="sanskrit">Sanskrit</option>
                                            <option value="hindi">Hindi</option>
                                        </select>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="modalEditUserCountry">Country</label>
                                        <select id="modalEditUserCountry" name="modalEditUserCountry" class="select2 form-select">
                                            <option value="">Select Value</option>
                                            <option value="Australia">Australia</option>
                                            <option value="Bangladesh">Bangladesh</option>
                                            <option value="Belarus">Belarus</option>
                                            <option value="Brazil">Brazil</option>
                                            <option value="Canada">Canada</option>
                                            <option value="China">China</option>
                                            <option value="France">France</option>
                                            <option value="Germany">Germany</option>
                                            <option value="India">India</option>
                                            <option value="Indonesia">Indonesia</option>
                                            <option value="Israel">Israel</option>
                                            <option value="Italy">Italy</option>
                                            <option value="Japan">Japan</option>
                                            <option value="Korea">Korea, Republic of</option>
                                            <option value="Mexico">Mexico</option>
                                            <option value="Philippines">Philippines</option>
                                            <option value="Russia">Russian Federation</option>
                                            <option value="South Africa">South Africa</option>
                                            <option value="Thailand">Thailand</option>
                                            <option value="Turkey">Turkey</option>
                                            <option value="Ukraine">Ukraine</option>
                                            <option value="United Arab Emirates">United Arab Emirates</option>
                                            <option value="United Kingdom">United Kingdom</option>
                                            <option value="United States">United States</option>
                                        </select>
                                    </div>
                                    <div class="col-12">
                                        <div class="d-flex align-items-center mt-1">
                                            <div class="form-check form-switch form-check-primary">
                                                <input type="checkbox" class="form-check-input" id="customSwitch10" checked />
                                                <label class="form-check-label" for="customSwitch10">
                                                    <span class="switch-icon-left"><i data-feather="check"></i></span>
                                                    <span class="switch-icon-right"><i data-feather="x"></i></span>
                                                </label>
                                            </div>
                                            <label class="form-check-label fw-bolder" for="customSwitch10">Use as a billing address?</label>
                                        </div>
                                    </div>
                                    <div class="col-12 text-center mt-2 pt-50">
                                        <button type="submit" class="btn btn-primary me-1">Submit</button>
                                        <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
                                            Discard
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ Edit User Modal -->
                <!-- upgrade your plan Modal -->
                <div class="modal fade" id="upgradePlanModal" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-upgrade-plan">
                        <div class="modal-content">
                            <div class="modal-header bg-transparent">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body px-5 pb-2">
                                <div class="text-center mb-2">
                                    <h1 class="mb-1">Upgrade Plan</h1>
                                    <p>Choose the best plan for user.</p>
                                </div>
                                <form id="upgradePlanForm" class="row pt-50" onsubmit="return false">
                                    <div class="col-sm-8">
                                        <label class="form-label" for="choosePlan">Choose Plan</label>
                                        <select id="choosePlan" name="choosePlan" class="form-select" aria-label="Choose Plan">
                                            <option selected>Choose Plan</option>
                                            <option value="standard">Standard - $99/month</option>
                                            <option value="exclusive">Exclusive - $249/month</option>
                                            <option value="Enterprise">Enterprise - $499/month</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-4 text-sm-end">
                                        <button type="submit" class="btn btn-primary mt-2">Upgrade</button>
                                    </div>
                                </form>
                            </div>
                            <hr />
                            <div class="modal-body px-5 pb-3">
                                <h6>User current plan is standard plan</h6>
                                <div class="d-flex justify-content-between align-items-center flex-wrap">
                                    <div class="d-flex justify-content-center me-1 mb-1">
                                        <sup class="h5 pricing-currency pt-1 text-primary">$</sup>
                                        <h1 class="fw-bolder display-4 mb-0 text-primary me-25">99</h1>
                                        <sub class="pricing-duration font-small-4 mt-auto mb-2">/month</sub>
                                    </div>
                                    <button class="btn btn-outline-danger cancel-subscription mb-1">Cancel Subscription</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ upgrade your plan Modal -->

	 <!-- END: content-->
	 

   <!-- Basic Tables end -->
<div class="card-footer">

</div>

<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

<script src="<%=request.getContextPath()%>/resources/js/member.js"></script>

 <!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
     <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jszip.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.rowGroup.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/polyfill.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jszip.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.rowGroup.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/cards/card-analytics.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-profile.js"></script>
     <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-edit-user.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view-account.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view.js"></script>
     <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-list.js"></script>
    <!-- END: Page JS-->
	
		
    <script>
        $(window).on('load', function() {
            if (feather) {
                feather.replace({
                    width: 14,
                    height: 14
                });
            }
        })
    </script>
</body>






