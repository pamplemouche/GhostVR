.class public final synthetic LUR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlS0;


# static fields
.field public static final a:LlS0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LUR0;

    invoke-direct {v0}, LUR0;-><init>()V

    sput-object v0, LUR0;->a:LlS0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
