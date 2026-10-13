.class public Lcom/oculus/browser/VrWindowAndroid$ActivityAndroidPermissionDelegate;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEc1;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/VrWindowAndroid;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/VrWindowAndroid;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/VrWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lcom/oculus/browser/VrWindowAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oculus/browser/VrWindowAndroid;Lcom/oculus/browser/VrWindowAndroid$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/oculus/browser/VrWindowAndroid$ActivityAndroidPermissionDelegate;-><init>(Lcom/oculus/browser/VrWindowAndroid;)V

    return-void
.end method


# virtual methods
.method public canRequestPermission(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handlePermissionResult(I[Ljava/lang/String;[I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 3
    invoke-static {v0, p1, v1, v2}, LdT;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestPermissions([Ljava/lang/String;LKc1;)V
    .locals 2

    .line 1
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, -0x1

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 3
    invoke-interface {p2, p1, v0}, LKc1;->a([Ljava/lang/String;[I)V

    return-void
.end method
