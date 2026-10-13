.class public Lcom/oculus/panelapp/dogfood/DogfoodView;
.super Landroid/widget/LinearLayout;
.source "DogfoodView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;,
        Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;,
        Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;,
        Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;
    }
.end annotation


# static fields
.field private static final FB_BUILDS_URI:Ljava/lang/String; = "https://our.intern.facebook.com/intern/mobile_builds/"

.field private static final OTA_COMPONENT_NAME:Ljava/lang/String; = "com.oculus.updater.core.os.OSUpdateService"

.field private static final OTA_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.updater"

.field private static final OTA_UPDATE_ACTION:Ljava/lang/String; = "ext_check_updates"

.field private static final PACKAGE_BUILD_ENDPOINT:[Ljava/lang/String;

.field private static final PACKAGE_VERSIONS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAcceptButton:Landroid/widget/Button;

.field private mAdapter:Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;

.field private mBuildItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBuildsPage:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDeclineButton:Landroid/widget/Button;

.field private mPanelApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

.field private mResetPage:Landroid/view/View;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSummaryPage:Landroid/view/View;

.field private mTelemetry:Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    const-class v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodView;->TAG:Ljava/lang/String;

    const-string v0, "com.oculus.vrshell"

    const-string v1, "com.oculus.vrshell.home"

    const-string v2, "com.oculus.browser"

    const-string v3, "com.oculus.mediagallery"

    const-string v4, "com.oculus.tv"

    .line 43
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodView;->PACKAGE_VERSIONS:[Ljava/lang/String;

    const-string v0, ""

    const-string v1, "oculus_vrshell"

    const-string v2, "oculus_home_shell_for_mobile"

    const-string v3, "oculus_browser"

    .line 53
    filled-new-array {v1, v2, v3, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodView;->PACKAGE_BUILD_ENDPOINT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/dogfood/DogfoodView;)Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mTelemetry:Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mBuildsPage:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mResetPage:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oculus/panelapp/dogfood/DogfoodView;Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->setUpBottomBarButtons(Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;)V

    return-void
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/oculus/panelapp/dogfood/DogfoodView;->PACKAGE_BUILD_ENDPOINT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/oculus/panelapp/dogfood/DogfoodView;->PACKAGE_VERSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/dogfood/DogfoodView;Ljava/lang/String;)Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->getPackageInfo(Ljava/lang/String;)Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/dogfood/DogfoodView;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mBuildItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/widget/Spinner;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/oculus/panelapp/dogfood/DogfoodView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/dogfood/DogfoodView;)Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mPanelApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mSummaryPage:Landroid/view/View;

    return-object p0
.end method

.method private bindSpinner()V
    .locals 3

    .line 124
    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_spinner:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mSpinner:Landroid/widget/Spinner;

    .line 125
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mContext:Landroid/content/Context;

    sget v1, Lcom/oculus/panelapp/dogfood/R$array;->dogfood_spinner_array:I

    sget v2, Lcom/oculus/panelapp/dogfood/R$layout;->spinner_bar_item:I

    .line 126
    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 128
    sget v1, Lcom/oculus/panelapp/dogfood/R$layout;->spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 129
    iget-object v1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;Lcom/oculus/panelapp/dogfood/DogfoodView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 133
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/oculus/panelapp/dogfood/DogfoodView$2;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/dogfood/DogfoodView$2;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private getPackageInfo(Ljava/lang/String;)Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;
    .locals 4

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v2, "%s"

    const/4 v3, 0x1

    .line 161
    new-array v3, v3, [Ljava/lang/Object;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "No package."

    .line 164
    :goto_0
    new-instance v1, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;

    invoke-direct {v1, p0, p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private populatePackages()V
    .locals 2

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mBuildItems:Ljava/util/List;

    .line 145
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oculus/panelapp/dogfood/DogfoodView$3;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/dogfood/DogfoodView$3;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setUpBottomBarButtons(Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;)V
    .locals 1

    .line 168
    sget-object v0, Lcom/oculus/panelapp/dogfood/DogfoodView$8;->$SwitchMap$com$oculus$panelapp$dogfood$DogfoodView$ButtonOptions:[I

    invoke-virtual {p1}, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 224
    sget-object p1, Lcom/oculus/panelapp/dogfood/DogfoodView;->TAG:Ljava/lang/String;

    const-string v0, "Using unknown bottom option"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mDeclineButton:Landroid/widget/Button;

    sget v0, Lcom/oculus/panelapp/dogfood/R$string;->dogfood_reject_button_text:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 192
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mAcceptButton:Landroid/widget/Button;

    sget v0, Lcom/oculus/panelapp/dogfood/R$string;->dogfood_accept_button_text:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 194
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mDeclineButton:Landroid/widget/Button;

    new-instance v0, Lcom/oculus/panelapp/dogfood/DogfoodView$6;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/dogfood/DogfoodView$6;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mAcceptButton:Landroid/widget/Button;

    new-instance v0, Lcom/oculus/panelapp/dogfood/DogfoodView$7;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/dogfood/DogfoodView$7;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mDeclineButton:Landroid/widget/Button;

    sget v0, Lcom/oculus/panelapp/dogfood/R$string;->dogfood_reject_reset_button_text:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 171
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mAcceptButton:Landroid/widget/Button;

    sget v0, Lcom/oculus/panelapp/dogfood/R$string;->dogfood_accept_reset_button_text:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 173
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mDeclineButton:Landroid/widget/Button;

    new-instance v0, Lcom/oculus/panelapp/dogfood/DogfoodView$4;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/dogfood/DogfoodView$4;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mAcceptButton:Landroid/widget/Button;

    new-instance v0, Lcom/oculus/panelapp/dogfood/DogfoodView$5;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/dogfood/DogfoodView$5;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;)V
    .locals 4

    .line 68
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mPanelApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    .line 69
    invoke-direct {p0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->populatePackages()V

    .line 70
    new-instance p1, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;

    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mAdapter:Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;

    .line 71
    new-instance p1, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mPanelApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    invoke-virtual {v0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;-><init>(Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;)V

    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mTelemetry:Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    .line 72
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mTelemetry:Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->setInstalledOsBuild(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mBuildItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;

    .line 74
    iget-object v1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mTelemetry:Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    iget-object v2, v0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;->label:Ljava/lang/String;

    iget-object v0, v0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->setInstalledApkBuild(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mTelemetry:Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    const-string v0, "summary_view"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->logAction(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->bindSpinner()V

    .line 82
    sget p1, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_summary_tab:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mSummaryPage:Landroid/view/View;

    .line 83
    sget p1, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_builds_tab:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mBuildsPage:Landroid/view/View;

    .line 84
    sget p1, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_reset_tab:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mResetPage:Landroid/view/View;

    .line 85
    sget p1, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_decline_button:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mDeclineButton:Landroid/widget/Button;

    .line 86
    sget p1, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_accept_button:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mAcceptButton:Landroid/widget/Button;

    .line 88
    sget p1, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_no_update_button:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 89
    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_channel_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    sget v1, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_current_build:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    sget v2, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_builds_list:I

    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 93
    iget-object v3, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mAdapter:Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v2, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mPanelApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    sget-object v3, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_OTA_FAST_DOGFOODING:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v2, v3}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mContext:Landroid/content/Context;

    sget v3, Lcom/oculus/panelapp/dogfood/R$string;->dogfood_fast_dogfood_channel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mPanelApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    sget-object v3, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_OTA_SLOW_DOGFOODING:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v2, v3}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mContext:Landroid/content/Context;

    sget v3, Lcom/oculus/panelapp/dogfood/R$string;->dogfood_slow_dogfood_channel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/oculus/panelapp/dogfood/DogfoodView;->mContext:Landroid/content/Context;

    sget v3, Lcom/oculus/panelapp/dogfood/R$string;->dogfood_unknown_dogfood_channel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_1
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v0, Lcom/oculus/panelapp/dogfood/DogfoodView$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/dogfood/DogfoodView$1;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
