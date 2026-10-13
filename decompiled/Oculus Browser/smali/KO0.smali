.class public LKO0;
.super LJO0;
.source "PG"


# static fields
.field public static final b:LVU;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LVU;

    const-string v1, "VR.EnterVrBrowserWithoutFeatureModule"

    invoke-direct {v0, v1}, LVU;-><init>(Ljava/lang/String;)V

    sput-object v0, LKO0;->b:LVU;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LJO0;-><init>()V

    return-void
.end method
