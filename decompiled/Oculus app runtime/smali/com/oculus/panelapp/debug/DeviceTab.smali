.class public final Lcom/oculus/panelapp/debug/DeviceTab;
.super Landroid/widget/FrameLayout;
.source "DeviceTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;,
        Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;,
        Lcom/oculus/panelapp/debug/DeviceTab$Category;
    }
.end annotation


# static fields
.field private static final BASIC_INFO:[Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

.field private static final GUARDIAN_INFO:[Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

.field private static final PACKAGE_VERSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sSystemPropertiesClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mPanelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 34
    const-class v0, Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/DeviceTab;->TAG:Ljava/lang/String;

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 40
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/DeviceTab;->sSystemPropertiesClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    sget-object v1, Lcom/oculus/panelapp/debug/DeviceTab;->TAG:Ljava/lang/String;

    const-string v2, "Unable to find android.os.SystemProperties class."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/16 v0, 0xe

    .line 63
    new-array v0, v0, [Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    new-instance v1, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v2, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v4, "Build.BOARD"

    invoke-direct {v1, v2, v4, v3}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v3, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v4, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    const-string v5, "Build.BOOTLOADER"

    invoke-direct {v1, v3, v5, v4}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    const-string v6, "UNKNOWN"

    const-string v7, "ro.build.branch"

    .line 67
    invoke-static {v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Build.BRANCH"

    invoke-direct {v4, v5, v8, v7}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v8, "Build.BRAND"

    invoke-direct {v4, v5, v8, v7}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/4 v1, 0x4

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    const-string v7, "ro.build.date"

    .line 69
    invoke-static {v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Build.DATE"

    invoke-direct {v4, v5, v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/4 v1, 0x5

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "Build.DEVICE"

    invoke-direct {v4, v5, v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/4 v1, 0x6

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v7, "Build.DISPLAY"

    invoke-direct {v4, v5, v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/4 v1, 0x7

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v7, "Build.FINGERPRINT"

    invoke-direct {v4, v5, v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/16 v1, 0x8

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v6, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v7, "Build.HARDWARE"

    invoke-direct {v4, v5, v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/16 v1, 0x9

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v7, "Build.MANUFACTURER"

    invoke-direct {v4, v5, v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/16 v1, 0xa

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "Build.MODEL"

    invoke-direct {v4, v5, v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/16 v1, 0xb

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v7, "Build.PRODUCT"

    invoke-direct {v4, v5, v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/16 v1, 0xc

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v7, "Build.SERIAL"

    invoke-direct {v4, v5, v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/16 v1, 0xd

    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v7, "Build.TYPE"

    invoke-direct {v4, v5, v7, v6}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    sput-object v0, Lcom/oculus/panelapp/debug/DeviceTab;->BASIC_INFO:[Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    const-string v8, "com.oculus.horizon"

    const-string v9, "com.oculus.home"

    const-string v10, "com.oculus.vrshell"

    const-string v11, "com.oculus.vrshell.home"

    const-string v12, "com.oculus.systemactivities"

    const-string v13, "com.oculus.systemdriver"

    const-string v14, "com.oculus.systemutilities"

    const-string v15, "com.oculus.mediaplayer"

    const-string v16, "com.oculus.browser"

    const-string v17, "com.oculus.mediagallery"

    const-string v18, "com.oculus.oculus360photos"

    const-string v19, "com.oculus.cinema"

    const-string v20, "com.oculus.venues"

    const-string v21, "com.oculus.tv"

    const-string v22, "com.oculus.systemux"

    .line 81
    filled-new-array/range {v8 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/DeviceTab;->PACKAGE_VERSIONS:[Ljava/lang/String;

    .line 99
    new-array v0, v3, [Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    sget-object v1, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->ACTIVE_MAP_ID:Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/panelapp/debug/DeviceTab;->GUARDIAN_INFO:[Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000()[Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;
    .locals 1

    .line 33
    sget-object v0, Lcom/oculus/panelapp/debug/DeviceTab;->BASIC_INFO:[Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/oculus/panelapp/debug/DeviceTab;->PACKAGE_VERSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/debug/DeviceTab;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/panelapp/debug/DeviceTab;->addAppVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/debug/DeviceTab;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/DeviceTab;->addNetworkInfo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/debug/DeviceTab;)Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oculus/panelapp/debug/DeviceTab;->mPanelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/debug/DeviceTab;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/DeviceTab;->addGuardianInfo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/debug/DeviceTab;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oculus/panelapp/debug/DeviceTab;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/debug/DeviceTab;)Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oculus/panelapp/debug/DeviceTab;->mAdapter:Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;

    return-object p0
.end method

.method private addAppVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v1, "%s (%s)"

    const/4 v2, 0x2

    .line 151
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "<unknown>"

    .line 155
    :goto_0
    new-instance v0, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v1, Lcom/oculus/panelapp/debug/DeviceTab$Category;->APP_VERSIONS:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    invoke-direct {v0, v1, p2, p1}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addGuardianInfo(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;",
            ">;)V"
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/oculus/panelapp/debug/DeviceTab;->GUARDIAN_INFO:[Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 186
    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->GUARDIAN:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    .line 189
    invoke-virtual {v3}, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 190
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/DeviceTab;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->getKey()Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v3

    const-string v8, ""

    invoke-static {v7, v3, v8}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getString(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addNetworkInfo(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;",
            ">;)V"
        }
    .end annotation

    .line 160
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 161
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 163
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 165
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 168
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    invoke-virtual {v3}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    .line 173
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 175
    :cond_2
    new-instance v4, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->NETWORK:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;-><init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 49
    :try_start_0
    sget-object v0, Lcom/oculus/panelapp/debug/DeviceTab;->sSystemPropertiesClass:Ljava/lang/Class;

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 51
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 54
    sget-object v0, Lcom/oculus/panelapp/debug/DeviceTab;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemProperties.getString() returning default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method private refresh()V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oculus/panelapp/debug/DeviceTab$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/debug/DeviceTab$1;-><init>(Lcom/oculus/panelapp/debug/DeviceTab;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 3

    .line 105
    sget v0, Lcom/oculus/panelapp/debug/R$id;->debug_tab_device:I

    const-string v1, "device"

    const-string v2, "Device"

    invoke-virtual {p2, v1, v2, v0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    iput-object p1, p0, Lcom/oculus/panelapp/debug/DeviceTab;->mPanelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/DeviceTab;->mItems:Ljava/util/List;

    .line 110
    invoke-direct {p0}, Lcom/oculus/panelapp/debug/DeviceTab;->refresh()V

    .line 112
    sget p1, Lcom/oculus/panelapp/debug/R$id;->device_details_list:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/DeviceTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/DeviceTab;->mListView:Landroid/widget/ListView;

    .line 113
    new-instance p1, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/DeviceTab;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;-><init>(Lcom/oculus/panelapp/debug/DeviceTab;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/DeviceTab;->mAdapter:Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;

    .line 114
    iget-object p1, p0, Lcom/oculus/panelapp/debug/DeviceTab;->mListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/oculus/panelapp/debug/DeviceTab;->mAdapter:Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
