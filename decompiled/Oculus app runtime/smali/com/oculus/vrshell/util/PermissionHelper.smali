.class public Lcom/oculus/vrshell/util/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/oculus/vrshell/util/PermissionHelper;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/PermissionHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSelfPermission(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 25
    :cond_0
    invoke-static {p1, p0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;ZZZ)Z
    .locals 8

    .line 35
    sget-object v0, Lcom/oculus/vrshell/util/PermissionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Permissions requesting thread."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 37
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_4

    aget-object v5, p1, v3

    .line 40
    :try_start_0
    invoke-static {v5}, Lcom/oculus/vrshell/ShellPermissions$Permission;->fromString(Ljava/lang/String;)Lcom/oculus/vrshell/ShellPermissions$Permission;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    sget-object v6, Lcom/oculus/vrshell/util/PermissionHelper$1;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    invoke-virtual {v5}, Lcom/oculus/vrshell/ShellPermissions$Permission;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v4, :cond_2

    const/4 v4, 0x2

    if-eq v5, v4, :cond_1

    const/4 v4, 0x3

    if-eq v5, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 65
    invoke-static {v4, p0}, Lcom/oculus/vrshell/util/PermissionHelper;->checkSelfPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez p4, :cond_3

    .line 67
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v4, "android.permission.RECORD_AUDIO"

    .line 59
    invoke-static {v4, p0}, Lcom/oculus/vrshell/util/PermissionHelper;->checkSelfPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez p3, :cond_3

    .line 61
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v4, "android.permission.CAMERA"

    .line 53
    invoke-static {v4, p0}, Lcom/oculus/vrshell/util/PermissionHelper;->checkSelfPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez p2, :cond_3

    .line 55
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    :catch_0
    sget-object v4, Lcom/oculus/vrshell/util/PermissionHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid permission type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 74
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 75
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 77
    array-length p2, p1

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_5

    aget-object p4, p1, p3

    .line 78
    sget-object v0, Lcom/oculus/vrshell/util/PermissionHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requesting permission:  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 81
    :cond_5
    invoke-static {p0, p1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v4

    .line 86
    :cond_6
    sget-object p0, Lcom/oculus/vrshell/util/PermissionHelper;->TAG:Ljava/lang/String;

    const-string p1, "Requested permissions already granted. Let caller send permissionsGranted."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
