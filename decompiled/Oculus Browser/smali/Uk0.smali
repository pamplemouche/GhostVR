.class public LUk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:LWk0;


# direct methods
.method public constructor <init>(LWk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LUk0;->a:LWk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object p1, p0, LUk0;->a:LWk0;

    .line 3
    iget-object v0, p1, LWk0;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0}, LJ/N;->McCUpqFO(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
