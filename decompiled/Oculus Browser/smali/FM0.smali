.class public abstract LFM0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/util/Property;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LEM0;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "alpha"

    invoke-direct {v0, v1, v2}, LEM0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, LFM0;->a:Landroid/util/Property;

    return-void
.end method
