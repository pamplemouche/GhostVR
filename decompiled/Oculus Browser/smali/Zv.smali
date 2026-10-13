.class public final LZv;
.super Luv;
.source "PG"


# instance fields
.field public final b:Lou;


# direct methods
.method public synthetic constructor <init>(Lou;Law;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Luv;-><init>()V

    iput-object p1, p0, LZv;->b:Lou;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-super {p0}, Luv;->a()V

    iget-object v0, p0, LZv;->b:Lou;

    invoke-virtual {v0}, Leu;->c()V

    return-void
.end method
