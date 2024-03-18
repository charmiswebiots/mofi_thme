import 'package:mofi/common/assets/index.dart';

import '../../config.dart';

class AppArray {
  //local list
  var localList = <Locale>[
    const Locale('en'),
    const Locale('ar'),
    const Locale('fr'),
    const Locale('hi'),
  ];

  List<DashboardModel> dashboardList = [
    DashboardModel(
      title: appFonts.general,
      subList: [
        SubList(
          subTitle: appFonts.dashboards,
          icon: svgAssets.iconHome,
          innerList: [
            InnerList(menuSub: appFonts.defaultDashboard),
            InnerList(menuSub: appFonts.project),
            InnerList(menuSub: appFonts.ecommerce),
            InnerList(menuSub: appFonts.education),
          ],
        ),
        SubList(
            subTitle: appFonts.widget,
            icon: svgAssets.iconWidget,
            innerList: [
              InnerList(menuSub: appFonts.toastOne),
              InnerList(menuSub: appFonts.buttonElement),
              InnerList(menuSub: appFonts.ratingBar),
              InnerList(menuSub: appFonts.badge),
              InnerList(menuSub: appFonts.alertDialog),
              InnerList(menuSub: appFonts.modal),
              InnerList(menuSub: appFonts.loaders),
              InnerList(menuSub: appFonts.tabs),
              InnerList(menuSub: appFonts.carouselSlider),
              InnerList(menuSub: appFonts.videoPlayer),
              InnerList(menuSub: appFonts.dragDrop),
              InnerList(menuSub: appFonts.datePicker),
              InnerList(menuSub: appFonts.dropDown)
            ]),
        SubList(
            subTitle: appFonts.pageLayout,
            icon: svgAssets.iconPageLayout,
            innerList: [
              InnerList(menuSub: appFonts.boxed),
              InnerList(menuSub: appFonts.rtl),
              InnerList(menuSub: appFonts.darkLayout),
              InnerList(menuSub: appFonts.hideNavScroll)
            ])
      ],
    ),
    DashboardModel(title: appFonts.applications, subList: [
      SubList(subTitle: appFonts.project, icon: svgAssets.iconInfo, innerList: [
        InnerList(menuSub: appFonts.projectList),
        InnerList(menuSub: appFonts.createNew)
      ]),
      SubList(subTitle: appFonts.fileManager, icon: svgAssets.iconFileManager),
      SubList(subTitle: appFonts.kanbanBoard, icon: svgAssets.iconWallet),
      SubList(
          subTitle: appFonts.ecommerce,
          icon: svgAssets.iconBag,
          innerList: [
            InnerList(menuSub: appFonts.addProduct),
            InnerList(menuSub: appFonts.product),
            InnerList(menuSub: appFonts.productPage),
            InnerList(menuSub: appFonts.productList),
            InnerList(menuSub: appFonts.paymentDetails),
            InnerList(menuSub: appFonts.orderHistory),
            InnerList(menuSub: appFonts.invoices, subInnerList: [
              SubInnerList(subInnerListTitle: appFonts.invoicesOne),
              SubInnerList(subInnerListTitle: appFonts.invoicesTwo),
              SubInnerList(subInnerListTitle: appFonts.invoicesThree),
              SubInnerList(subInnerListTitle: appFonts.invoicesFour),
              SubInnerList(subInnerListTitle: appFonts.invoicesFive),
              SubInnerList(subInnerListTitle: appFonts.invoicesSix),
            ]),
            InnerList(menuSub: appFonts.cart),
            InnerList(menuSub: appFonts.wishList),
            InnerList(menuSub: appFonts.checkOut),
            InnerList(menuSub: appFonts.pricing)
          ]),
      SubList(subTitle: appFonts.letterBox, icon: svgAssets.iconMessage),
      SubList(subTitle: appFonts.chat, icon: svgAssets.iconChat,innerList: [
        InnerList(menuSub: appFonts.privateChat),
        InnerList(menuSub: appFonts.groupChart),
      ]),
      SubList(subTitle: appFonts.users, icon: svgAssets.iconUser,innerList: [
        InnerList(menuSub: appFonts.userProfile),
        InnerList(menuSub: appFonts.userEdit),
        InnerList(menuSub: appFonts.userCard),
      ]),
      SubList(subTitle: appFonts.bookmark,icon: svgAssets.iconBookMark),
      SubList(subTitle: appFonts.contacts,icon: svgAssets.iconContacts),
      SubList(subTitle: appFonts.task,icon: svgAssets.iconTickSquare),
      SubList(subTitle: appFonts.calender,icon: svgAssets.iconCalender),
      SubList(subTitle: appFonts.socialApp,icon: svgAssets.iconSocialApp),
      SubList(subTitle: appFonts.toDo,icon: svgAssets.iconEditSquare),
      SubList(subTitle: appFonts.searchResult,icon: svgAssets.iconSearch),
    ]),
    DashboardModel(title: appFonts.formsTable, subList: [
      SubList(subTitle: appFonts.forms,icon: svgAssets.iconPlus, innerList: [
        InnerList(menuSub: appFonts.formControls, subInnerList: [
          SubInnerList(subInnerListTitle: appFonts.formValidation),
          SubInnerList(subInnerListTitle: appFonts.baseInput),
          SubInnerList(subInnerListTitle: appFonts.baseInput),
          SubInnerList(subInnerListTitle: appFonts.checkboxRadio),
          SubInnerList(subInnerListTitle: appFonts.inputGroups),
          SubInnerList(subInnerListTitle: appFonts.inputMask),
          SubInnerList(subInnerListTitle: appFonts.megaOption),
        ]),
        InnerList(menuSub: appFonts.formWidget, subInnerList: [
          SubInnerList(subInnerListTitle: appFonts.datePicker),
          SubInnerList(subInnerListTitle: appFonts.touchSpin),
          SubInnerList(subInnerListTitle: appFonts.selectTwo),
          SubInnerList(subInnerListTitle: appFonts.switchData),
          SubInnerList(subInnerListTitle: appFonts.typeAhead),
          SubInnerList(subInnerListTitle: appFonts.clipboard),
        ]),
        InnerList(menuSub: appFonts.formLayout, subInnerList: [
          SubInnerList(subInnerListTitle: appFonts.formWizard),
          SubInnerList(subInnerListTitle: appFonts.formWizardTwo),
          SubInnerList(subInnerListTitle: appFonts.twoFactor),
        ])
      ]),
      SubList(subTitle: appFonts.tables,icon: svgAssets.iconEdit, innerList: [
        InnerList(menuSub: appFonts.basicTable),
        InnerList(menuSub: appFonts.dataTable),
        InnerList(menuSub: appFonts.responsiveTable),
        InnerList(menuSub: appFonts.editableTable),
      ])
    ]),
    DashboardModel(title: appFonts.applications, subList: [
      SubList(subTitle: appFonts.project,icon: svgAssets.iconInfo, innerList: [
        InnerList(menuSub: appFonts.projectList),
        InnerList(menuSub: appFonts.createNew)
      ]),
      SubList(subTitle: appFonts.fileManager, icon: svgAssets.iconFileManager),
      SubList(subTitle: appFonts.kanbanBoard,icon: svgAssets.iconWallet),
      SubList(subTitle: appFonts.ecommerce,icon: svgAssets.iconBag, innerList: [
        InnerList(menuSub: appFonts.addProduct),
        InnerList(menuSub: appFonts.product),
        InnerList(menuSub: appFonts.productPage),
        InnerList(menuSub: appFonts.productList),
        InnerList(menuSub: appFonts.paymentDetails),
        InnerList(menuSub: appFonts.orderHistory),
        InnerList(menuSub: appFonts.invoices, subInnerList: [
          SubInnerList(subInnerListTitle: appFonts.invoicesOne),
          SubInnerList(subInnerListTitle: appFonts.invoicesTwo),
          SubInnerList(subInnerListTitle: appFonts.invoicesThree),
          SubInnerList(subInnerListTitle: appFonts.invoicesFour),
          SubInnerList(subInnerListTitle: appFonts.invoicesFive),
          SubInnerList(subInnerListTitle: appFonts.invoicesSix),
        ]),
        InnerList(menuSub: appFonts.cart),
        InnerList(menuSub: appFonts.wishList),
        InnerList(menuSub: appFonts.checkOut),
        InnerList(menuSub: appFonts.pricing)
      ]),
      SubList(subTitle: appFonts.letterBox,icon: svgAssets.iconMessage),
      SubList(subTitle: appFonts.chat,icon: svgAssets.iconChat,innerList: [
        InnerList(menuSub: appFonts.privateChat),
        InnerList(menuSub: appFonts.groupChart),
      ]),
      SubList(subTitle: appFonts.users,icon: svgAssets.iconUser ,innerList: [
        InnerList(menuSub: appFonts.userProfile),
        InnerList(menuSub: appFonts.userEdit),
        InnerList(menuSub: appFonts.userCard),
      ]),
      SubList(subTitle: appFonts.bookmark,icon: svgAssets.iconBookMark),
      SubList(subTitle: appFonts.contacts,icon: svgAssets.iconContacts),
      SubList(subTitle: appFonts.task,icon: svgAssets.iconTickSquare),
      SubList(subTitle: appFonts.calender,icon: svgAssets.iconCalender),
      SubList(subTitle: appFonts.socialApp,icon: svgAssets.iconSocialApp),
      SubList(subTitle: appFonts.toDo,icon: svgAssets.iconEditSquare),
      SubList(subTitle: appFonts.searchResult,icon: svgAssets.iconSearch),
    ]),
    DashboardModel(title: appFonts.component, subList: [
      SubList(subTitle: appFonts.uiKits,icon: svgAssets.iconFolder, innerList: [
        InnerList(menuSub: appFonts.typography),
        InnerList(menuSub: appFonts.avatars),
        InnerList(menuSub: appFonts.helperClass),
        InnerList(menuSub: appFonts.grid),
        InnerList(menuSub: appFonts.tagPills),
        InnerList(menuSub: appFonts.progress),
        InnerList(menuSub: appFonts.modal),
        InnerList(menuSub: appFonts.alert),
        InnerList(menuSub: appFonts.popOver),
        InnerList(menuSub: appFonts.tooltip),
        InnerList(menuSub: appFonts.dropDown),
        InnerList(menuSub: appFonts.accordion),
        InnerList(menuSub: appFonts.tabs),
        InnerList(menuSub: appFonts.lists)
      ]),
      SubList(subTitle: appFonts.bonusUI,icon: svgAssets.iconTicketStar, innerList: [
        InnerList(menuSub: appFonts.scrollable),
        InnerList(menuSub: appFonts.treeView),
        InnerList(menuSub: appFonts.toast),
        InnerList(menuSub: appFonts.rating),
        InnerList(menuSub: appFonts.dropZone),
        InnerList(menuSub: appFonts.tour),
        InnerList(menuSub: appFonts.sweetAlert),
        InnerList(menuSub: appFonts.animatedModal),
        InnerList(menuSub: appFonts.owlCarousel),
        InnerList(menuSub: appFonts.ribbon),
        InnerList(menuSub: appFonts.pagination),
        InnerList(menuSub: appFonts.breadCrumb),
        InnerList(menuSub: appFonts.rangeSlider),
        InnerList(menuSub: appFonts.imageCropper),
        InnerList(menuSub: appFonts.basicCard),
        InnerList(menuSub: appFonts.creativeCard),
        InnerList(menuSub: appFonts.draggableCard),
        InnerList(menuSub: appFonts.timeLine),
      ]),
      SubList(subTitle: appFonts.animation, icon:svgAssets.iconCategory,innerList: [
        InnerList(menuSub: appFonts.animate),
        InnerList(menuSub: appFonts.scrollReveal),
        InnerList(menuSub: appFonts.aosAnimation),
        InnerList(menuSub: appFonts.tiltAnimation),
        InnerList(menuSub: appFonts.wowAnimation),
      ]),
      SubList(subTitle: appFonts.icons, icon:svgAssets.icons,innerList: [
        InnerList(menuSub: appFonts.flagIcon),
        InnerList(menuSub: appFonts.fontAwesomeIcon),
        InnerList(menuSub: appFonts.icoIcon),
        InnerList(menuSub: appFonts.themifyIcon),
        InnerList(menuSub: appFonts.featherIcon),
        InnerList(menuSub: appFonts.whetherIcon),
      ]),
      SubList(subTitle: appFonts.buttons,icon: svgAssets.iconButton, innerList: [
        InnerList(menuSub: appFonts.defaultStyle),
        InnerList(menuSub: appFonts.flatStyle),
        InnerList(menuSub: appFonts.edgeStyle),
        InnerList(menuSub: appFonts.raisedStyle),
        InnerList(menuSub: appFonts.buttonGroup),
      ]),
      SubList(subTitle: appFonts.chat, icon: svgAssets.iconChat,innerList: [
        InnerList(menuSub: appFonts.eChart),
        InnerList(menuSub: appFonts.apexChart),
        InnerList(menuSub: appFonts.googleChart),
        InnerList(menuSub: appFonts.sparkLineChart),
        InnerList(menuSub: appFonts.flatChart),
        InnerList(menuSub: appFonts.knobChart),
        InnerList(menuSub: appFonts.morrisChart),
        InnerList(menuSub: appFonts.chartJsChart),
        InnerList(menuSub: appFonts.chartistChart),
        InnerList(menuSub: appFonts.peityChart),
      ]),
    ]),
  ];
}
