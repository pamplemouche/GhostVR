.class public final enum Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;
.super Ljava/lang/Enum;
.source "LibraryModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/LibraryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LibraryRequestOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

.field public static final enum LAUNCH_PROMPT:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

.field public static final enum LIBRARY:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

.field public static final enum NOTIFICATION:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

.field public static final enum SETTINGS:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

.field public static final enum STORAGE_MANAGER:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

.field public static final enum STORE:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    const-string v1, "LAUNCH_PROMPT"

    invoke-direct {v0, v1, v3}, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->LAUNCH_PROMPT:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    .line 49
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    const-string v1, "LIBRARY"

    invoke-direct {v0, v1, v4}, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->LIBRARY:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    .line 50
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v5}, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->NOTIFICATION:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    .line 51
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    const-string v1, "SETTINGS"

    invoke-direct {v0, v1, v6}, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->SETTINGS:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    .line 52
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    const-string v1, "STORAGE_MANAGER"

    invoke-direct {v0, v1, v7}, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->STORAGE_MANAGER:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    .line 53
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    const-string v1, "STORE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->STORE:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    sget-object v1, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->LAUNCH_PROMPT:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->LIBRARY:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->NOTIFICATION:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->SETTINGS:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->STORAGE_MANAGER:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->STORE:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->$VALUES:[Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    return-object v0
.end method

.method public static values()[Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->$VALUES:[Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    invoke-virtual {v0}, [Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    return-object v0
.end method
