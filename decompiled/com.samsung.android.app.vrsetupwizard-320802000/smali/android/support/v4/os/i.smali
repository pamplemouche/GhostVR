.class Landroid/support/v4/os/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/os/k;


# static fields
.field protected static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.os.DVFSHelper"

    sput-object v0, Landroid/support/v4/os/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 5

    sget-object v0, Landroid/support/v4/os/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onSmoothScrollEvent"

    invoke-static {v0, v3, v2}, Landroid/support/v4/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v0, v3}, Landroid/support/v4/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_0
    return v4
.end method
