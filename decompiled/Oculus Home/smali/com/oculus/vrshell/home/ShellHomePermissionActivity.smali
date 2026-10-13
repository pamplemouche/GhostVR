.class public Lcom/oculus/vrshell/home/ShellHomePermissionActivity;
.super Landroid/app/Activity;
.source "ShellHomePermissionActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    }
.end annotation


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "com.oculus.vrshell.home_permissions_request"

.field public static final PERMISSION_INTENT_KEY:Ljava/lang/String; = "requested_permission"

.field public static final PERMISSION_STATUS_INTENT_KEY:Ljava/lang/String; = "permission_status"

.field public static final REQUEST_ID_INTENT_KEY:Ljava/lang/String; = "platform_request_id"

.field private static final TAG:Ljava/lang/String;

.field private static final supportedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private requestID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->supportedPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->requestID:I

    return-void
.end method

.method private getPermissionStatusFromInt(ILjava/lang/String;)Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    .locals 2
    .param p1, "result"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    sget-object v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->GRANTED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    .line 102
    .local v0, "permissionStatus":Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    :goto_0
    return-object v0

    .line 96
    .end local v0    # "permissionStatus":Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    :cond_0
    invoke-static {p0, p2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    sget-object v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->DENIED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    .restart local v0    # "permissionStatus":Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    goto :goto_0

    .line 99
    .end local v0    # "permissionStatus":Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    :cond_1
    sget-object v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->BLOCKED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    .restart local v0    # "permissionStatus":Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    goto :goto_0
.end method


# virtual methods
.method public broadcastResult(Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;)V
    .locals 3
    .param p1, "permissionStatus"    # Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrshell.home_permissions_request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "platform_request_id"

    iget v2, p0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->requestID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v1, "permission_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->finish()V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "platform_request_id"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->requestID:I

    .line 49
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "requested_permission"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "wantedPermission":Ljava/lang/String;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->supportedPermissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid permission passed to ShellHomePermissionActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_1
    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "permissionValue":I
    if-eqz v0, :cond_2

    .line 57
    sget-object v2, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v5

    invoke-static {p0, v2, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_2
    sget-object v2, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->GRANTED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    invoke-virtual {p0, v2}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->broadcastResult(Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->setIntent(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 73
    array-length v1, p3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 74
    sget-object v1, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->UNKNOWN:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    invoke-virtual {p0, v1}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->broadcastResult(Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    aget v1, p3, v3

    aget-object v2, p2, v3

    invoke-direct {p0, v1, v2}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->getPermissionStatusFromInt(ILjava/lang/String;)Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    move-result-object v0

    .line 79
    .local v0, "permissionStatus":Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    sget-object v1, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received permission result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;->broadcastResult(Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;)V

    goto :goto_0
.end method
