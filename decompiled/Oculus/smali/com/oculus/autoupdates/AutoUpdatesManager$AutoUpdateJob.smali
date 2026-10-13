.class Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob;
.super Ljava/lang/Object;
.source "AutoUpdatesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/autoupdates/AutoUpdatesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoUpdateJob"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;
    }
.end annotation


# instance fields
.field public final entitlementsWithPastUpdateFailures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation
.end field

.field public final entitlementsWithPermissionChanges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation
.end field

.field public final entitlementsWithoutUpdates:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation
.end field

.field public final installedEntitlements:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation
.end field

.field public final updateableEntitlements:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob;->installedEntitlements:Lcom/google/common/collect/ImmutableList;

    .line 280
    iput-object p2, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob;->entitlementsWithoutUpdates:Lcom/google/common/collect/ImmutableList;

    .line 281
    iput-object p3, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob;->entitlementsWithPermissionChanges:Lcom/google/common/collect/ImmutableList;

    .line 282
    iput-object p4, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob;->entitlementsWithPastUpdateFailures:Lcom/google/common/collect/ImmutableList;

    .line 283
    iput-object p5, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob;->updateableEntitlements:Lcom/google/common/collect/ImmutableList;

    .line 284
    return-void
.end method
