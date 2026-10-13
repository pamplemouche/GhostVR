.class public final Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration;
.super Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;
.source "ConsumerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)V
    .locals 3

    .line 10
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->sysUxBuilder()Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiNavigateTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 12
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->access$500(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiSocialIconsVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 13
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->access$400(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiPeopleTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiShareTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 15
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->access$300(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setCastingEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 16
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->access$300(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiNotificationsTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 17
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->access$300(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setWifiEditable(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 18
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->access$200(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setGuardianButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 19
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->access$100(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setGuardianPillButtonsEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 20
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->access$000(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setPassthroughButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;-><init>(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration;-><init>(Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;)V

    return-void
.end method

.method public static builder()Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;
    .locals 1

    .line 24
    new-instance v0, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;

    invoke-direct {v0}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;-><init>()V

    return-object v0
.end method
