.class public Lwf1;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static b:Lwf1;


# instance fields
.field public a:LGf1;


# direct methods
.method public constructor <init>(LFW;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LGf1;

    const/4 v1, 0x0

    const-string v2, "org.webapk.IDENTITY_SERVICE_API"

    invoke-direct {v0, p1, v1, v2}, LGf1;-><init>(LFW;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lwf1;->a:LGf1;

    return-void
.end method
