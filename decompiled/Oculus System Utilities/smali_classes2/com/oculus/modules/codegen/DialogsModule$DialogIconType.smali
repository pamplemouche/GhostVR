.class public final enum Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;
.super Ljava/lang/Enum;
.source "DialogsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/DialogsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogIconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

.field public static final enum info:Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

    const-string v1, "info"

    invoke-direct {v0, v1, v2}, Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;->info:Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

    sget-object v1, Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;->info:Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;->$VALUES:[Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;->$VALUES:[Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

    invoke-virtual {v0}, [Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

    return-object v0
.end method
