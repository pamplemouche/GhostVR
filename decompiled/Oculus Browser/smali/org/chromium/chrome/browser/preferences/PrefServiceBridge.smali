.class public Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static e:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a:[Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b:[Ljava/lang/String;

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    sput-object v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addContentSettingExceptionToList(Ljava/util/ArrayList;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, LWB0;

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, LWB0;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addNewLanguageItemToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, LHz0;

    invoke-direct {v0, p1, p2, p3, p4}, LHz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->e:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->e:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    .line 4
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/search_engines/TemplateUrlService;->e()V

    .line 5
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->e:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    return-object v0
.end method

.method public static copyStringArrayToList(Ljava/util/List;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static createAboutVersionStrings(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;-><init>(Ljava/lang/String;Ljava/lang/String;Lvy0;)V

    return-object v0
.end method

.method public static getAndroidPermissionsForContentSetting(I)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->d:[Ljava/lang/String;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->c:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 11
    invoke-static {p0}, LJ/N;->Mhm1CPCt(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .locals 0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1
    :sswitch_0
    invoke-static {p0}, LJ/N;->MXn3vMR7(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2
    :sswitch_1
    invoke-static {p0}, LJ/N;->ME8K$ZpY(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :sswitch_2
    invoke-static {p0}, LJ/N;->MuW$3Wx5(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :sswitch_3
    invoke-static {p0}, LJ/N;->Mbldt00_(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :sswitch_4
    invoke-static {p0}, LJ/N;->MjmI3OyA(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6
    :sswitch_5
    invoke-static {p0}, LJ/N;->M3Hb9xx1(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :sswitch_6
    invoke-static {p0}, LJ/N;->MYbQtP8Y(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :sswitch_7
    invoke-static {p0}, LJ/N;->MRGAxmcu(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9
    :sswitch_8
    invoke-static {p0, p1}, LJ/N;->Mnbv67a4(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    .line 10
    :sswitch_9
    invoke-static {p0}, LJ/N;->MQ6qWnKD(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x2 -> :sswitch_8
        0x4 -> :sswitch_8
        0x6 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_2
        0x1a -> :sswitch_8
        0x1f -> :sswitch_1
        0x21 -> :sswitch_0
        0x23 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2e -> :sswitch_8
    .end sparse-switch
.end method

.method public b(I)Z
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
