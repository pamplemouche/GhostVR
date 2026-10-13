.class public final synthetic LNc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LOc0;

.field public final x:I


# direct methods
.method public constructor <init>(LOc0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNc0;->w:LOc0;

    iput p2, p0, LNc0;->x:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LNc0;->w:LOc0;

    iget v1, p0, LNc0;->x:I

    .line 1
    iget-object v0, v0, LOc0;->a:Laf1;

    invoke-virtual {v0, v1}, Laf1;->a(I)V

    return-void
.end method
