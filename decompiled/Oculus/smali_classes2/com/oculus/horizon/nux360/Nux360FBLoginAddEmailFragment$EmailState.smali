.class final enum Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;
.super Ljava/lang/Enum;
.source "Nux360FBLoginAddEmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EmailState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

.field public static final enum EXISTING:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

.field public static final enum UNVERIFIED:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

.field public static final enum VERIFIED:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    const-string v1, "VERIFIED"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->VERIFIED:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    .line 81
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    const-string v1, "UNVERIFIED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->UNVERIFIED:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    .line 82
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    const-string v1, "EXISTING"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->EXISTING:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    sget-object v1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->VERIFIED:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->UNVERIFIED:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->EXISTING:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->$VALUES:[Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->$VALUES:[Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    invoke-virtual {v0}, [Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$EmailState;

    return-object v0
.end method
