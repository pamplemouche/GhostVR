.class public Lcom/samsung/android/app/vrsetupwizard/common/c/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "k"

.field private static b:Lcom/samsung/android/app/vrsetupwizard/common/c/k;

.field private static c:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/samsung/android/app/vrsetupwizard/common/c/k;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;-><init>()V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    :cond_0
    sput-object p0, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->c:Landroid/app/Activity;

    sget-object p0, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    :cond_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
