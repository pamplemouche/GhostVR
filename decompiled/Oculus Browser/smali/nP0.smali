.class public LnP0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static b:LnP0;


# instance fields
.field public a:LGf1;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LGf1;

    sget-object v1, LZ01;->a:LFW;

    const-string v2, "android.intent.category.WEBAPK_API"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LGf1;-><init>(LFW;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LnP0;->a:LGf1;

    return-void
.end method
