.class public Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragmentAutoProvider;
.super Lcom/facebook/inject/AbstractComponentProvider;
.source "AppPermissionsFragmentAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractComponentProvider",
        "<",
        "Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;",
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
    instance-of v0, p1, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragmentAutoProvider;

    return v0
.end method

.method public inject(Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;)V

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragmentAutoProvider;->inject(Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;)V

    return-void
.end method
