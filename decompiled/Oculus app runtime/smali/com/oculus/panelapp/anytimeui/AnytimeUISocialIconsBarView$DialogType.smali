.class final enum Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;
.super Ljava/lang/Enum;
.source "AnytimeUISocialIconsBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

.field public static final enum INVITE:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

.field public static final enum PARTY_MANAGEMENT:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

.field public static final enum PROFILE:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

.field public static final enum UNKNOWN:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 558
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    const/4 v1, 0x0

    const-string v2, "INVITE"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->INVITE:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    .line 559
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    const/4 v2, 0x1

    const-string v3, "PARTY_MANAGEMENT"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->PARTY_MANAGEMENT:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    .line 560
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    const/4 v3, 0x2

    const-string v4, "PROFILE"

    invoke-direct {v0, v4, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->PROFILE:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    .line 561
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->UNKNOWN:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    const/4 v0, 0x4

    .line 557
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    sget-object v5, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->INVITE:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->PARTY_MANAGEMENT:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->PROFILE:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->UNKNOWN:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->$VALUES:[Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 557
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;
    .locals 1

    .line 557
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;
    .locals 1

    .line 557
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->$VALUES:[Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    return-object v0
.end method
