.class public LK1;
.super LF1;
.source "PG"


# instance fields
.field public final synthetic w:LE1;


# direct methods
.method public constructor <init>(LM1;LE1;)V
    .locals 0

    .line 1
    iput-object p2, p0, LK1;->w:LE1;

    invoke-direct {p0}, LF1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LE1;)V
    .locals 1

    .line 1
    iget-object v0, p0, LK1;->w:LE1;

    invoke-virtual {v0}, LE1;->c()V

    .line 2
    invoke-virtual {p1, p0}, LE1;->b(LD1;)LE1;

    return-void
.end method
