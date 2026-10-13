.class public Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;
.super Ljava/lang/Object;
.source "ConsumerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private areGuardianPillButtonsEnabled:Z

.field private auiMessagesIconEnabled:Z

.field private auiSocialIconsEnabled:Z

.field private isGuardianButtonEnabled:Z

.field private isPassthroughButtonEnabled:Z

.field private isStandaloneHeadset:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->isPassthroughButtonEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->areGuardianPillButtonsEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->isGuardianButtonEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->isStandaloneHeadset:Z

    return p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->isPeopleTabEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->auiSocialIconsEnabled:Z

    return p0
.end method

.method private isPeopleTabEnabled()Z
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->isStandaloneHeadset:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 75
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->auiSocialIconsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->auiMessagesIconEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public build()Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration;
    .locals 2

    .line 66
    new-instance v0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration;-><init>(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$1;)V

    return-object v0
.end method

.method public setAuiMessagesIconEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->auiMessagesIconEnabled:Z

    return-object p0
.end method

.method public setAuiSocialIconsEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->auiSocialIconsEnabled:Z

    return-object p0
.end method

.method public setGuardianButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->isGuardianButtonEnabled:Z

    return-object p0
.end method

.method public setGuardianPillButtonsEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->areGuardianPillButtonsEnabled:Z

    return-object p0
.end method

.method public setPassthroughButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->isPassthroughButtonEnabled:Z

    return-object p0
.end method

.method public setStandaloneDevice(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->isStandaloneHeadset:Z

    return-object p0
.end method
