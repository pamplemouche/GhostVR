.class public final enum Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;
.super Ljava/lang/Enum;
.source "ApkUpdateInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/ApkUpdateInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

.field public static final enum NEW:Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

.field public static final enum RESTORED:Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;->NEW:Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

    .line 16
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

    const-string v1, "RESTORED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;->RESTORED:Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;->NEW:Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;->RESTORED:Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;->$VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;->$VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;

    return-object v0
.end method
