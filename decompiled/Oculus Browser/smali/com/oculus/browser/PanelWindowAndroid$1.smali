.class public Lcom/oculus/browser/PanelWindowAndroid$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEc1;


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/PanelWindowAndroid;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/PanelWindowAndroid;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/PanelWindowAndroid$1;->this$0:Lcom/oculus/browser/PanelWindowAndroid;

    iput-object p2, p0, Lcom/oculus/browser/PanelWindowAndroid$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRequestPermission(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

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
    iget-object v0, p0, Lcom/oculus/browser/PanelWindowAndroid$1;->val$context:Landroid/content/Context;

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
    .locals 5

    const-string v0, "requestPermissions"

    const-string v1, "PanelWindowAndroid"

    .line 1
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelWindowAndroid$1;->this$0:Lcom/oculus/browser/PanelWindowAndroid;

    invoke-static {v0, p2}, Lcom/oculus/browser/PanelWindowAndroid;->access$002(Lcom/oculus/browser/PanelWindowAndroid;LKc1;)LKc1;

    if-eqz p1, :cond_3

    .line 3
    array-length p2, p1

    if-eqz p2, :cond_3

    .line 4
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p2, :cond_1

    aget-object v4, p1, v2

    .line 5
    invoke-virtual {p0, v4}, Lcom/oculus/browser/PanelWindowAndroid$1;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ne p2, v3, :cond_2

    const-string p2, "starting PermissionsRequestActivity"

    .line 6
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/oculus/browser/PanelWindowAndroid$1;->val$context:Landroid/content/Context;

    const-class v1, Lcom/oculus/browser/PermissionsRequestActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "request_permission"

    .line 8
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.oculus.vrshell.panel.vr_permission.GET"

    .line 9
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 10
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    iget-object p1, p0, Lcom/oculus/browser/PanelWindowAndroid$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 12
    :cond_2
    array-length p2, p1

    new-array p2, p2, [I

    .line 13
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 14
    iget-object v0, p0, Lcom/oculus/browser/PanelWindowAndroid$1;->this$0:Lcom/oculus/browser/PanelWindowAndroid;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/browser/PanelWindowAndroid;->onRequestPermissionResponse([Ljava/lang/String;[I)V

    :goto_2
    return-void

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No permissions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
