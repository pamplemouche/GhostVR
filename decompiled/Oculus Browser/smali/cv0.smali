.class public final synthetic Lcv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfw0;


# instance fields
.field public final a:Lyv0;


# direct methods
.method public constructor <init>(Lyv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcv0;->a:Lyv0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcv0;->a:Lyv0;

    .line 1
    invoke-virtual {v0}, Lyv0;->f()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lyv0;->c(Z)V

    return-void
.end method
