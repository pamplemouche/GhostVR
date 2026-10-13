.class Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager$ActivityListenerManagerHolder;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityListenerManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;-><init>(Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager$1;)V

    sput-object v0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager$ActivityListenerManagerHolder;->INSTANCE:Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
