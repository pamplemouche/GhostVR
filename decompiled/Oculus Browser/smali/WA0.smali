.class public final synthetic LWA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqy0;


# static fields
.field public static final a:Lqy0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LWA0;

    invoke-direct {v0}, LWA0;-><init>()V

    sput-object v0, LWA0;->a:Lqy0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;->O()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lpy0;->a(Lqy0;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
