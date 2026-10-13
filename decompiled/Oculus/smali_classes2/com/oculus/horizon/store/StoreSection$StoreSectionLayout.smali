.class public final enum Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;
.super Ljava/lang/Enum;
.source "StoreSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/StoreSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreSectionLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

.field public static final enum HORIZON_LANDSCAPE_TILES:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

.field public static final enum HORIZON_SQUARE_TILES:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    new-instance v0, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    const-string v1, "HORIZON_SQUARE_TILES"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->HORIZON_SQUARE_TILES:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    .line 165
    new-instance v0, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    const-string v1, "HORIZON_LANDSCAPE_TILES"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->HORIZON_LANDSCAPE_TILES:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    sget-object v1, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->HORIZON_SQUARE_TILES:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->HORIZON_LANDSCAPE_TILES:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->$VALUES:[Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

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
    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;
    .locals 1

    .prologue
    .line 168
    const-string v0, "HORIZON_SQUARE_TILES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->HORIZON_SQUARE_TILES:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    .line 173
    :goto_0
    return-object v0

    .line 170
    :cond_0
    const-string v0, "HORIZON_LANDSCAPE_TILES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->HORIZON_LANDSCAPE_TILES:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    goto :goto_0

    .line 173
    :cond_1
    sget-object v0, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->HORIZON_LANDSCAPE_TILES:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;
    .locals 1

    .prologue
    .line 163
    const-class v0, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->$VALUES:[Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    invoke-virtual {v0}, [Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/oculus/horizon/store/StoreSection$2;->$SwitchMap$com$oculus$horizon$store$StoreSection$StoreSectionLayout:[I

    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 184
    const-string v0, "HORIZON_LANDSCAPE_TILES"

    :goto_0
    return-object v0

    .line 180
    :pswitch_0
    const-string v0, "HORIZON_SQUARE_TILES"

    goto :goto_0

    .line 182
    :pswitch_1
    const-string v0, "HORIZON_LANDSCAPE_TILES"

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
