.class public final synthetic LdE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFU0;


# instance fields
.field public final w:LkE0;


# direct methods
.method public constructor <init>(LkE0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LdE0;->w:LkE0;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, LdE0;->w:LkE0;

    .line 1
    invoke-virtual {v0}, LkE0;->O()V

    return-void
.end method
