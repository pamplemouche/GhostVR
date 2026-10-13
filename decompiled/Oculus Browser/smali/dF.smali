.class public LdF;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Formatter;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, LdF;->a:Ljava/util/Formatter;

    return-void
.end method
