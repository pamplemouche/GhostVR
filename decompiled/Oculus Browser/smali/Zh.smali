.class public LZh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lbi;


# direct methods
.method public constructor <init>(Lbi;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZh;->w:Lbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LZh;->w:Lbi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbi;->a(Z)V

    return-void
.end method
