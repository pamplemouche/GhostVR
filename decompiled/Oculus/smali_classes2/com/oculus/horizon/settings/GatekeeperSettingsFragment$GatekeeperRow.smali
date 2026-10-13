.class final Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;
.super Ljava/lang/Object;
.source "GatekeeperSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GatekeeperRow"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final isEnabled:Z

.field public final isFetched:Z

.field public final isOverrideEnabled:Z

.field public final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;Ljava/lang/String;ZZZ)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->name:Ljava/lang/String;

    .line 149
    iput-boolean p3, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isEnabled:Z

    .line 150
    iput-boolean p4, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isFetched:Z

    .line 151
    iput-boolean p5, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isOverrideEnabled:Z

    .line 152
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 156
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    check-cast p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;

    .line 161
    iget-object v1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isEnabled:Z

    iget-boolean v2, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isEnabled:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isFetched:Z

    iget-boolean v2, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isFetched:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isOverrideEnabled:Z

    iget-boolean v2, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isOverrideEnabled:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isFetched:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isOverrideEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
