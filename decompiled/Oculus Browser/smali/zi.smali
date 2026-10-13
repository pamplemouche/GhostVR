.class public Lzi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lyi;


# static fields
.field public static final a:Lyi;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzi;

    invoke-direct {v0}, Lzi;-><init>()V

    sput-object v0, Lzi;->a:Lyi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
