.class public final synthetic LdS0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LeS0;


# static fields
.field public static final a:LeS0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LdS0;

    invoke-direct {v0}, LdS0;-><init>()V

    sput-object v0, LdS0;->a:LeS0;

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
