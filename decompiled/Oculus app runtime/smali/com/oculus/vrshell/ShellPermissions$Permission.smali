.class public final enum Lcom/oculus/vrshell/ShellPermissions$Permission;
.super Ljava/lang/Enum;
.source "ShellPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/ShellPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/ShellPermissions$Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/ShellPermissions$Permission;

.field public static final enum CAMERA:Lcom/oculus/vrshell/ShellPermissions$Permission;

.field public static final enum MICROPHONE:Lcom/oculus/vrshell/ShellPermissions$Permission;

.field public static final enum WRITE_STORAGE:Lcom/oculus/vrshell/ShellPermissions$Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lcom/oculus/vrshell/ShellPermissions$Permission;

    const/4 v1, 0x0

    const-string v2, "CAMERA"

    invoke-direct {v0, v2, v1}, Lcom/oculus/vrshell/ShellPermissions$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/ShellPermissions$Permission;->CAMERA:Lcom/oculus/vrshell/ShellPermissions$Permission;

    .line 37
    new-instance v0, Lcom/oculus/vrshell/ShellPermissions$Permission;

    const/4 v2, 0x1

    const-string v3, "MICROPHONE"

    invoke-direct {v0, v3, v2}, Lcom/oculus/vrshell/ShellPermissions$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/ShellPermissions$Permission;->MICROPHONE:Lcom/oculus/vrshell/ShellPermissions$Permission;

    .line 38
    new-instance v0, Lcom/oculus/vrshell/ShellPermissions$Permission;

    const/4 v3, 0x2

    const-string v4, "WRITE_STORAGE"

    invoke-direct {v0, v4, v3}, Lcom/oculus/vrshell/ShellPermissions$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/ShellPermissions$Permission;->WRITE_STORAGE:Lcom/oculus/vrshell/ShellPermissions$Permission;

    const/4 v0, 0x3

    .line 35
    new-array v0, v0, [Lcom/oculus/vrshell/ShellPermissions$Permission;

    sget-object v4, Lcom/oculus/vrshell/ShellPermissions$Permission;->CAMERA:Lcom/oculus/vrshell/ShellPermissions$Permission;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$Permission;->MICROPHONE:Lcom/oculus/vrshell/ShellPermissions$Permission;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$Permission;->WRITE_STORAGE:Lcom/oculus/vrshell/ShellPermissions$Permission;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/vrshell/ShellPermissions$Permission;->$VALUES:[Lcom/oculus/vrshell/ShellPermissions$Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/vrshell/ShellPermissions$Permission;
    .locals 5

    .line 41
    invoke-static {}, Lcom/oculus/vrshell/ShellPermissions$Permission;->values()[Lcom/oculus/vrshell/ShellPermissions$Permission;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42
    invoke-virtual {v3}, Lcom/oculus/vrshell/ShellPermissions$Permission;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregconized value for Permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/ShellPermissions$Permission;
    .locals 1

    .line 35
    const-class v0, Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/ShellPermissions$Permission;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/ShellPermissions$Permission;
    .locals 1

    .line 35
    sget-object v0, Lcom/oculus/vrshell/ShellPermissions$Permission;->$VALUES:[Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/ShellPermissions$Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/ShellPermissions$Permission;

    return-object v0
.end method
