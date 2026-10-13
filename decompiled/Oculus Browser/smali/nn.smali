.class public final Lnn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LXu;


# instance fields
.field public final synthetic a:Lcv;

.field public final synthetic b:Lln;


# direct methods
.method public constructor <init>(Lln;Lcv;)V
    .locals 0

    iput-object p1, p0, Lnn;->b:Lln;

    iput-object p2, p0, Lnn;->a:Lcv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbv;)V
    .locals 1

    iget-object p1, p0, Lnn;->b:Lln;

    .line 1
    iget-object p1, p1, Lln;->b:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lnn;->a:Lcv;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
