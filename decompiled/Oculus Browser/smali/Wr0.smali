.class public LWr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lbs0;


# direct methods
.method public synthetic constructor <init>(Lbs0;LUr0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LWr0;->w:Lbs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LWr0;->w:Lbs0;

    .line 2
    iget-object v0, v0, Lbs0;->x:Lcs0;

    .line 3
    check-cast v0, Lhr0;

    invoke-virtual {v0}, Lhr0;->c()V

    return-void
.end method
