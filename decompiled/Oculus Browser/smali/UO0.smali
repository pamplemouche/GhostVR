.class public final synthetic LUO0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LZT0;


# instance fields
.field public final a:LZT0;


# direct methods
.method public constructor <init>(LZT0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUO0;->a:LZT0;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, LUO0;->a:LZT0;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a(LZT0;Z)V

    return-void
.end method
