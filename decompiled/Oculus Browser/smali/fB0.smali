.class public final synthetic LfB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llc;


# static fields
.field public static final w:Llc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LfB0;

    invoke-direct {v0}, LfB0;-><init>()V

    sput-object v0, LfB0;->w:Llc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p2}, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
