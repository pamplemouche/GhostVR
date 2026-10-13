.class public final enum Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
.super Ljava/lang/Enum;
.source "ShellHomePermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/ShellHomePermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

.field public static final enum BLOCKED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

.field public static final enum DENIED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

.field public static final enum GRANTED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

.field public static final enum UNKNOWN:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->UNKNOWN:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    .line 29
    new-instance v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    const-string v1, "GRANTED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->GRANTED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    .line 30
    new-instance v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    const-string v1, "DENIED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->DENIED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    .line 31
    new-instance v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v5}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->BLOCKED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    sget-object v1, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->UNKNOWN:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->GRANTED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->DENIED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->BLOCKED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->$VALUES:[Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->$VALUES:[Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    return-object v0
.end method
