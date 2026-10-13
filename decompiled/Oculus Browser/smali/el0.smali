.class public final synthetic Lel0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lle1;


# direct methods
.method public constructor <init>(Lle1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lel0;->a:Lle1;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lel0;->a:Lle1;

    check-cast p1, Ljava/lang/Integer;

    .line 1
    sget-object v1, LEd1;->a:Lfe1;

    invoke-virtual {v0, v1}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDd1;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, v0, p1}, LDd1;->b(Lle1;I)V

    return-void
.end method
