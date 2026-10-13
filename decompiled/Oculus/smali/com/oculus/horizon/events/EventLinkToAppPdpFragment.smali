.class public Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "EventLinkToAppPdpFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mAppName:Ljava/lang/String;

.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mLoggingData:Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)V
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/fragmentfactory/FragmentFactoryModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mAppId:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mAppName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mLoggingData:Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mLoggingData:Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)V

    .line 45
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 49
    new-instance v0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;-><init>(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)V

    .line 69
    new-instance v1, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$style;->Theme_Light_Dialog:I

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 70
    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$string;->events_link_to_app_pdp_title:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mAppName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$string;->events_link_to_app_pdp_message:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mAppName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->events_link_to_app_pdp_confirm:I

    .line 72
    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->events_link_to_app_pdp_cancel:I

    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->mLoggingData:Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportEventLinkToPdpModalView(Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;)V

    .line 81
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->TAG:Ljava/lang/String;

    invoke-super {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 85
    return-void
.end method
