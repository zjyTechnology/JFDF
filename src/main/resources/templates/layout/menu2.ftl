<#macro menuTree children>
	<#if children?? && children?size gt 0>
	<#list children as child>
		<li class="treeview">
			<a href="#">
				<#if child.iconType == "ICON">
				<i class="fa ${child.iconPath}"></i>
				<#elseif child.iconType == "IMG">
				<i class="fa"><img src="${ctx}${child.iconPath}" width="14px" hidden="14px" /></i>
				</#if>
				<span>${child.menuName}</span>
				
				<#if child.children?? && child.children?size gt 0>
				<span class="pull-right-container"> 
					<i class="fa fa-angle-left pull-right"></i>
				</span>
				</#if>
			</a>
			<#if child.children?? && child.children?size gt 0>
				<ul class="treeview-menu">
					<@menuTree children=child.children />
				</ul>
			</#if>
		</li>
	</#list>
	</#if>
</#macro>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="treeview"><a href="#"><i class="fa fa-dashboard"></i><span>Dashboard</span><span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span></a>
						<ul class="treeview-menu">
							<li><a href="${ctx}/index"><i class="fa"><img src="${ctx}/test.jpg" width="14px" height="14px" /></i> Dashboard v1</a></li>
							<li><a href="${ctx}/index"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
							<li><a href="${ctx}/index"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"><i class="fa fa-files-o"></i> <span>Layout Options</span> <span class="pull-right-container"></span></a>
						<ul class="treeview-menu">
							<li><a href="pages/layout/top-nav.html"> <i class="fa fa-circle-o"></i> Top Navigation </a></li>
							<li><a href="pages/layout/boxed.html"> <i class="fa fa-circle-o"></i> Boxed </a></li>
							<li><a href="pages/layout/fixed.html"> <i class="fa fa-circle-o"></i> Fixed </a></li>
							<li><a href="pages/layout/collapsed-sidebar.html"> <i class="fa fa-circle-o"></i> Collapsed Sidebar </a></li>
						</ul>
					</li>
					<li><a href="pages/widgets.html"> <i class="fa fa-th"></i> <span>Widgets</span> <span class="pull-right-container"></span></a></li>
					<li class="treeview"><a href="#"> <i class="fa fa-pie-chart"></i> <span>Charts</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span></a>
						<ul class="treeview-menu">
							<li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> ChartJS</a></li>
							<li><a href="pages/charts/morris.html"><i class="fa fa-circle-o"></i> Morris</a></li>
							<li><a href="pages/charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>
							<li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"><i class="fa fa-laptop"></i><span>UI Elements</span><span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span></a>
						<ul class="treeview-menu">
							<li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
							<li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
							<li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
							<li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
							<li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
							<li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"> <i class="fa fa-edit"></i> <span>Forms</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span></a>
						<ul class="treeview-menu">
							<li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
							<li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
							<li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"> <i class="fa fa-table"></i> <span>Tables</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span></a>
						<ul class="treeview-menu">
							<li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
							<li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
						</ul>
					</li>
					<li><a href="pages/calendar.html"> <i class="fa fa-calendar"></i> <span>Calendar</span> <span class="pull-right-container"></span></a></li>
					<li><a href="pages/mailbox/mailbox.html"> <i class="fa fa-envelope"></i> <span>Mailbox</span><span class="pull-right-container"></span></a></li>
					<li class="treeview"><a href="#"> <i class="fa fa-folder"></i> <span>Examples</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span></a>
						<ul class="treeview-menu">
							<li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>
							<li><a href="pages/examples/profile.html"><i class="fa fa-circle-o"></i> Profile</a></li>
							<li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> Login</a></li>
							<li><a href="pages/examples/register.html"><i class="fa fa-circle-o"></i> Register</a></li>
							<li><a href="pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
							<li><a href="pages/examples/404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>
							<li><a href="pages/examples/500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>
							<li><a href="pages/examples/blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>
							<li><a href="pages/examples/pace.html"><i class="fa fa-circle-o"></i> Pace Page</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"> <i class="fa fa-share"></i> <span>Multilevel</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span></a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
							<li class="treeview"><a href="#"><i class="fa fa-circle-o"></i> Level One <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span> </a>
								<ul class="treeview-menu">
									<li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
									<li class="treeview"><a href="#"><i class="fa fa-circle-o"></i> Level Two <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span> </a>
										<ul class="treeview-menu">
											<li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
											<li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
						</ul>
					</li>
					<li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>