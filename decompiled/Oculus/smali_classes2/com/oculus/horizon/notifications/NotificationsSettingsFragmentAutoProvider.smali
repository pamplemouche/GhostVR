.class public Lcom/oculus/horizon/notifications/NotificationsSettingsFragmentAutoProvider;
.super Lcom/facebook/inject/AbstractComponentProvider;
.source "NotificationsSettingsFragmentAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractComponentProvider",
        "<",
        "Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractComponentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    instance-of v0, p1, Lcom/oculus/horizon/notifications/NotificationsSettingsFragmentAutoProvider;

    return v0
.end method

.method public inject(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)V

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragmentAutoProvider;->inject(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)V

    return-void
.end method
