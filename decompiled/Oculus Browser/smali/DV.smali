.class public LDV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LEV;


# direct methods
.method public constructor <init>(LEV;)V
    .locals 0

    .line 1
    iput-object p1, p0, LDV;->w:LEV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LDV;->w:LEV;

    iget-object v0, v0, LEV;->a:LLV;

    invoke-virtual {v0}, LLV;->l()V

    return-void
.end method
