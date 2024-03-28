import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:mofi/routes/route_name.dart';

import '../../config.dart';

class AppArray {
  //local list
  var localList = <Locale>[
    const Locale('en'),
    const Locale('ar'),
    const Locale('fr'),
    const Locale('hi'),
  ];

  //icon list
  List<IconModel> iconList = [
    IconModel(icon: FeatherIcons.bell, isIcon: true),
    IconModel(icon: FeatherIcons.bookmark, isIcon: true),
    IconModel(icon: FeatherIcons.moon, isIcon: true),
    IconModel(imageIcon: svgAssets.iconMessage, isIcon: false),
    IconModel(imageIcon: svgAssets.iconBag, isIcon: false),
  ];

//Navigation drawer list
  List<DashboardModel> navigationList = [
    DashboardModel(
      title: appFonts.general,
      subList: [
        SubList(
          subTitle: appFonts.dashboards,
          icon: svgAssets.iconHome,
          route: DashboardRoute,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.defaultDashboard, subInnerList: []),
            InnerList(menuSub: appFonts.project, subInnerList: []),
            InnerList(menuSub: appFonts.ecommerce, subInnerList: []),
            InnerList(menuSub: appFonts.education, subInnerList: []),
          ],
        ),
        SubList(
            subTitle: appFonts.widget,
            icon: svgAssets.iconWidget,
            isSublistOpen: false,
            innerList: [
              InnerList(menuSub: appFonts.toastOne, subInnerList: []),
              InnerList(menuSub: appFonts.buttonElement, subInnerList: []),
              InnerList(menuSub: appFonts.ratingBar, subInnerList: []),
              InnerList(menuSub: appFonts.badge, subInnerList: []),
              InnerList(menuSub: appFonts.alertDialog, subInnerList: []),
              InnerList(menuSub: appFonts.modal, subInnerList: []),
              InnerList(menuSub: appFonts.loaders, subInnerList: []),
              InnerList(menuSub: appFonts.tabs, subInnerList: []),
              InnerList(menuSub: appFonts.carouselSlider, subInnerList: []),
              InnerList(menuSub: appFonts.videoPlayer, subInnerList: []),
              InnerList(menuSub: appFonts.dragDrop, subInnerList: []),
              InnerList(menuSub: appFonts.datePicker, subInnerList: []),
              InnerList(menuSub: appFonts.dropDown, subInnerList: [])
            ]),
        SubList(
            subTitle: appFonts.pageLayout,
            icon: svgAssets.iconPageLayout,
            isSublistOpen: false,
            innerList: [
              InnerList(menuSub: appFonts.boxed, subInnerList: []),
              InnerList(menuSub: appFonts.rtl, subInnerList: []),
              InnerList(menuSub: appFonts.darkLayout, subInnerList: []),
              InnerList(menuSub: appFonts.hideNavScroll, subInnerList: [])
            ])
      ],
    ),
    DashboardModel(title: appFonts.applications, subList: [
      SubList(subTitle: appFonts.project, icon: svgAssets.iconInfo, innerList: [
        InnerList(menuSub: appFonts.projectList, subInnerList: []),
        InnerList(menuSub: appFonts.createNew, subInnerList: [])
      ]),
      SubList(
          subTitle: appFonts.fileManager,
          icon: svgAssets.iconFileManager,
          isSublistOpen: false,
          innerList: []),
      SubList(
          subTitle: appFonts.kanbanBoard,
          icon: svgAssets.iconWallet,
          isSublistOpen: false,
          innerList: []),
      SubList(
          subTitle: appFonts.ecommerce,
          icon: svgAssets.iconBag,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.addProduct, subInnerList: []),
            InnerList(menuSub: appFonts.product, subInnerList: []),
            InnerList(menuSub: appFonts.productPage, subInnerList: []),
            InnerList(menuSub: appFonts.productList, subInnerList: []),
            InnerList(menuSub: appFonts.paymentDetails, subInnerList: []),
            InnerList(menuSub: appFonts.orderHistory, subInnerList: []),
            InnerList(menuSub: appFonts.invoices, subInnerList: [
              SubInnerList(subInnerListTitle: appFonts.invoicesOne),
              SubInnerList(subInnerListTitle: appFonts.invoicesTwo),
              SubInnerList(subInnerListTitle: appFonts.invoicesThree),
              SubInnerList(subInnerListTitle: appFonts.invoicesFour),
              SubInnerList(subInnerListTitle: appFonts.invoicesFive),
              SubInnerList(subInnerListTitle: appFonts.invoicesSix),
            ]),
            InnerList(menuSub: appFonts.cart, subInnerList: []),
            InnerList(menuSub: appFonts.wishList, subInnerList: []),
            InnerList(menuSub: appFonts.checkOut, subInnerList: []),
            InnerList(menuSub: appFonts.pricing, subInnerList: [])
          ]),
      SubList(
          subTitle: appFonts.letterBox,
          icon: svgAssets.iconMessage,
          isSublistOpen: false,
          innerList: []),
      SubList(subTitle: appFonts.chat, icon: svgAssets.iconChat, innerList: [
        InnerList(menuSub: appFonts.privateChat, subInnerList: []),
        InnerList(menuSub: appFonts.groupChart, subInnerList: []),
      ]),
      SubList(
          subTitle: appFonts.users,
          icon: svgAssets.iconUser,
          isSublistOpen: false,
          route: ProfileRoute,
          innerList: [
            InnerList(menuSub: appFonts.userProfile, subInnerList: []),
            InnerList(menuSub: appFonts.userEdit, subInnerList: []),
            InnerList(menuSub: appFonts.userCard, subInnerList: []),
          ]),
      SubList(
          subTitle: appFonts.bookmark,
          icon: svgAssets.iconBookMark,
          isSublistOpen: false,
          innerList: []),
      SubList(
          subTitle: appFonts.contacts,
          icon: svgAssets.iconContacts,
          isSublistOpen: false,
          innerList: []),
      SubList(
          subTitle: appFonts.task,
          icon: svgAssets.iconTickSquare,
          isSublistOpen: false,
          innerList: []),
      SubList(
          subTitle: appFonts.calender,
          icon: svgAssets.iconCalender,
          isSublistOpen: false,
          innerList: []),
      SubList(
          subTitle: appFonts.socialApp,
          icon: svgAssets.iconSocialApp,
          isSublistOpen: false,
          innerList: []),
      SubList(
          subTitle: appFonts.toDo,
          icon: svgAssets.iconEditSquare,
          isSublistOpen: false,
          innerList: []),
      SubList(
          subTitle: appFonts.searchResult,
          icon: svgAssets.iconSearch,
          isSublistOpen: false,
          innerList: []),
    ]),
    DashboardModel(title: appFonts.formsTable, subList: [
      SubList(
          subTitle: appFonts.forms,
          icon: svgAssets.iconPlus,
          isSublistOpen: false,
          innerList: [
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
      SubList(
          subTitle: appFonts.tables,
          icon: svgAssets.iconEdit,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.basicTable, subInnerList: []),
            InnerList(menuSub: appFonts.dataTable, subInnerList: []),
            InnerList(menuSub: appFonts.responsiveTable, subInnerList: []),
            InnerList(menuSub: appFonts.editableTable, subInnerList: []),
          ])
    ]),
    DashboardModel(title: appFonts.component, subList: [
      SubList(
          subTitle: appFonts.uiKits,
          icon: svgAssets.iconFolder,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.typography, subInnerList: []),
            InnerList(menuSub: appFonts.avatars, subInnerList: []),
            InnerList(menuSub: appFonts.helperClass, subInnerList: []),
            InnerList(menuSub: appFonts.grid, subInnerList: []),
            InnerList(menuSub: appFonts.tagPills, subInnerList: []),
            InnerList(menuSub: appFonts.progress, subInnerList: []),
            InnerList(menuSub: appFonts.modal, subInnerList: []),
            InnerList(menuSub: appFonts.alert, subInnerList: []),
            InnerList(menuSub: appFonts.popOver, subInnerList: []),
            InnerList(menuSub: appFonts.tooltip, subInnerList: []),
            InnerList(menuSub: appFonts.dropDown, subInnerList: []),
            InnerList(menuSub: appFonts.accordion, subInnerList: []),
            InnerList(menuSub: appFonts.tabs, subInnerList: []),
            InnerList(menuSub: appFonts.lists, subInnerList: [])
          ]),
      SubList(
          subTitle: appFonts.bonusUI,
          icon: svgAssets.iconTicketStar,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.scrollable, subInnerList: []),
            InnerList(menuSub: appFonts.treeView, subInnerList: []),
            InnerList(menuSub: appFonts.toast, subInnerList: []),
            InnerList(menuSub: appFonts.rating, subInnerList: []),
            InnerList(menuSub: appFonts.dropZone, subInnerList: []),
            InnerList(menuSub: appFonts.tour, subInnerList: []),
            InnerList(menuSub: appFonts.sweetAlert, subInnerList: []),
            InnerList(menuSub: appFonts.animatedModal, subInnerList: []),
            InnerList(menuSub: appFonts.owlCarousel, subInnerList: []),
            InnerList(menuSub: appFonts.ribbon, subInnerList: []),
            InnerList(menuSub: appFonts.pagination, subInnerList: []),
            InnerList(menuSub: appFonts.breadCrumb, subInnerList: []),
            InnerList(menuSub: appFonts.rangeSlider, subInnerList: []),
            InnerList(menuSub: appFonts.imageCropper, subInnerList: []),
            InnerList(menuSub: appFonts.basicCard, subInnerList: []),
            InnerList(menuSub: appFonts.creativeCard, subInnerList: []),
            InnerList(menuSub: appFonts.draggableCard, subInnerList: []),
            InnerList(menuSub: appFonts.timeLine, subInnerList: []),
          ]),
      SubList(
          subTitle: appFonts.animation,
          icon: svgAssets.iconCategory,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.animate, subInnerList: []),
            InnerList(menuSub: appFonts.scrollReveal, subInnerList: []),
            InnerList(menuSub: appFonts.aosAnimation, subInnerList: []),
            InnerList(menuSub: appFonts.tiltAnimation, subInnerList: []),
            InnerList(menuSub: appFonts.wowAnimation, subInnerList: []),
          ]),
      SubList(
          subTitle: appFonts.icons,
          icon: svgAssets.icons,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.flagIcon, subInnerList: []),
            InnerList(menuSub: appFonts.fontAwesomeIcon, subInnerList: []),
            InnerList(menuSub: appFonts.icoIcon, subInnerList: []),
            InnerList(menuSub: appFonts.themifyIcon, subInnerList: []),
            InnerList(menuSub: appFonts.featherIcon, subInnerList: []),
            InnerList(menuSub: appFonts.whetherIcon, subInnerList: []),
          ]),
      SubList(
          subTitle: appFonts.buttons,
          icon: svgAssets.iconButton,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.defaultStyle, subInnerList: []),
            InnerList(menuSub: appFonts.flatStyle, subInnerList: []),
            InnerList(menuSub: appFonts.edgeStyle, subInnerList: []),
            InnerList(menuSub: appFonts.raisedStyle, subInnerList: []),
            InnerList(menuSub: appFonts.buttonGroup, subInnerList: []),
          ]),
      SubList(
          subTitle: appFonts.chat,
          icon: svgAssets.iconChat,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.eChart, subInnerList: []),
            InnerList(menuSub: appFonts.apexChart, subInnerList: []),
            InnerList(menuSub: appFonts.googleChart, subInnerList: []),
            InnerList(menuSub: appFonts.sparkLineChart, subInnerList: []),
            InnerList(menuSub: appFonts.flatChart, subInnerList: []),
            InnerList(menuSub: appFonts.knobChart, subInnerList: []),
            InnerList(menuSub: appFonts.morrisChart, subInnerList: []),
            InnerList(menuSub: appFonts.chartJsChart, subInnerList: []),
            InnerList(menuSub: appFonts.chartistChart, subInnerList: []),
            InnerList(menuSub: appFonts.peityChart, subInnerList: []),
          ]),
    ]),
    DashboardModel(title: appFonts.pages, subList: [
      SubList(
          isSublistOpen: false,
          subTitle: appFonts.landingPage,
          icon: svgAssets.iconWallet,
          innerList: []),
      SubList(
          isSublistOpen: false,
          subTitle: appFonts.samplePage,
          icon: svgAssets.iconPaperPlus,
          innerList: []),
      SubList(
          isSublistOpen: false,
          subTitle: appFonts.internationalization,
          icon: svgAssets.iconPlay,
          innerList: []),
      SubList(
          isSublistOpen: false,
          subTitle: appFonts.starterKit,
          icon: svgAssets.iconTicketStar,
          innerList: []),
      SubList(
          isSublistOpen: false,
          subTitle: appFonts.other,
          icon: svgAssets.iconPassword,
          innerList: [
            InnerList(menuSub: appFonts.errorPage, subInnerList: [
              SubInnerList(subInnerListTitle: appFonts.errorPageOne),
              SubInnerList(subInnerListTitle: appFonts.errorPageTwo),
              SubInnerList(subInnerListTitle: appFonts.errorPageThree),
              SubInnerList(subInnerListTitle: appFonts.errorPageFour),
              SubInnerList(subInnerListTitle: appFonts.errorPageFive),
              SubInnerList(subInnerListTitle: appFonts.errorPageSix),
            ]),
            InnerList(menuSub: appFonts.authentication, subInnerList: [
              SubInnerList(subInnerListTitle: appFonts.loginSample),
              SubInnerList(subInnerListTitle: appFonts.loginWithBGImage),
              SubInnerList(subInnerListTitle: appFonts.loginWithImageTwo),
              SubInnerList(subInnerListTitle: appFonts.loginWithValidation),
              SubInnerList(subInnerListTitle: appFonts.loginWithToolTip),
              SubInnerList(subInnerListTitle: appFonts.loginWithSweetAlert),
              SubInnerList(subInnerListTitle: appFonts.registerSimple),
              SubInnerList(subInnerListTitle: appFonts.registerWithBgImage),
              SubInnerList(subInnerListTitle: appFonts.registerWithImageTwo),
              SubInnerList(subInnerListTitle: appFonts.registerWizard),
              SubInnerList(subInnerListTitle: appFonts.unlockUSer),
              SubInnerList(subInnerListTitle: appFonts.forgetPassword),
              SubInnerList(subInnerListTitle: appFonts.resetPassword),
              SubInnerList(subInnerListTitle: appFonts.maintenance),
            ]),
            InnerList(menuSub: appFonts.comingSoon, subInnerList: [
              SubInnerList(subInnerListTitle: appFonts.comingSample),
              SubInnerList(subInnerListTitle: appFonts.comingWithBgVideo),
              SubInnerList(subInnerListTitle: appFonts.comingWithBgImage),
            ]),
            InnerList(menuSub: appFonts.emailTemplates, subInnerList: [
              SubInnerList(subInnerListTitle: appFonts.basicEmail),
              SubInnerList(subInnerListTitle: appFonts.basicWithHeader),
              SubInnerList(subInnerListTitle: appFonts.ecommerce),
              SubInnerList(subInnerListTitle: appFonts.emailTemplates),
              SubInnerList(subInnerListTitle: appFonts.eCommerceEmail),
              SubInnerList(subInnerListTitle: appFonts.orderSuccess),
            ]),
          ]),
    ]),
    DashboardModel(title: appFonts.miscellaneous, subList: [
      SubList(
          isSublistOpen: false,
          subTitle: appFonts.gallery,
          icon: svgAssets.iconGallery,
          innerList: [
            InnerList(menuSub: appFonts.galleryGrid, subInnerList: []),
            InnerList(menuSub: appFonts.galleryGridDesc, subInnerList: []),
            InnerList(menuSub: appFonts.masonryGallery, subInnerList: []),
            InnerList(menuSub: appFonts.masonryWithDesc, subInnerList: []),
            InnerList(menuSub: appFonts.hoverEffects, subInnerList: [])
          ]),
      SubList(
          subTitle: appFonts.blog,
          icon: svgAssets.iconBlog,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.blogDetails, subInnerList: []),
            InnerList(menuSub: appFonts.blogSingle, subInnerList: []),
            InnerList(menuSub: appFonts.addPost, subInnerList: []),
          ]),
      SubList(
          subTitle: appFonts.faq,
          icon: svgAssets.iconFAQ,
          isSublistOpen: false,
          innerList: []),
      SubList(
          subTitle: appFonts.jobSearch,
          isSublistOpen: false,
          icon: svgAssets.iconFilter,
          innerList: [
            InnerList(menuSub: appFonts.cardView, subInnerList: []),
            InnerList(menuSub: appFonts.listView, subInnerList: []),
            InnerList(menuSub: appFonts.jobDetails, subInnerList: []),
            InnerList(menuSub: appFonts.apply, subInnerList: []),
          ]),
      SubList(
          isSublistOpen: false,
          subTitle: appFonts.learning,
          icon: svgAssets.iconLearning,
          innerList: [
            InnerList(menuSub: appFonts.learningList, subInnerList: []),
            InnerList(menuSub: appFonts.detailedCourse, subInnerList: []),
          ]),
      SubList(
          subTitle: appFonts.maps,
          icon: svgAssets.iconMap,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.mapsJS, subInnerList: []),
            InnerList(menuSub: appFonts.vectorMaps, subInnerList: []),
          ]),
      SubList(
          subTitle: appFonts.editors,
          icon: svgAssets.iconMap,
          isSublistOpen: false,
          innerList: [
            InnerList(menuSub: appFonts.summerNote, subInnerList: []),
            InnerList(menuSub: appFonts.ckEditor, subInnerList: []),
            InnerList(menuSub: appFonts.mdeEditor, subInnerList: []),
            InnerList(menuSub: appFonts.aceCodeEditor, subInnerList: []),
          ]),
      SubList(
          isSublistOpen: false,
          subTitle: appFonts.knowledgebase,
          icon: svgAssets.iconSetting,
          innerList: []),
      SubList(
          isSublistOpen: false,
          subTitle: appFonts.supportTicket,
          icon: svgAssets.iconSupportTicket,
          innerList: []),
    ]),
  ];
}
