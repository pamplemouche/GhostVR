.class final enum Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;
.super Ljava/lang/Enum;
.source "ShellPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/ShellPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PermissionGrantState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

.field public static final enum DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

.field public static final enum GRANTED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

.field public static final enum PERMANENTLY_DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    const/4 v1, 0x0

    const-string v2, "GRANTED"

    invoke-direct {v0, v2, v1}, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->GRANTED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    .line 14
    new-instance v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    const/4 v2, 0x1

    const-string v3, "DISABLED"

    invoke-direct {v0, v3, v2}, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    .line 15
    new-instance v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    const/4 v3, 0x2

    const-string v4, "PERMANENTLY_DISABLED"

    invoke-direct {v0, v4, v3}, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->PERMANENTLY_DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    sget-object v4, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->GRANTED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->PERMANENTLY_DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->$VALUES:[Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(ZZ)Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->toGrantState(ZZ)Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    move-result-object p0

    return-object p0
.end method

.method private static toGrantState(ZZ)Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "isGranted and isPermanentlyDisabled can\'t both be true"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 25
    sget-object p0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->PERMANENTLY_DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    return-object p0

    :cond_2
    if-eqz p0, :cond_3

    .line 27
    sget-object p0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->GRANTED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    return-object p0

    .line 29
    :cond_3
    sget-object p0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;
    .locals 1

    .line 12
    const-class v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;
    .locals 1

    .line 12
    sget-object v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->$VALUES:[Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    return-object v0
.end method
