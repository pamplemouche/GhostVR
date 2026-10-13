.class public final synthetic LQj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LBj;


# instance fields
.field public final a:LTj0;


# direct methods
.method public constructor <init>(LTj0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQj0;->a:LTj0;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LQj0;->a:LTj0;

    invoke-virtual {v0, p1, p2, p3}, LTj0;->a(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
